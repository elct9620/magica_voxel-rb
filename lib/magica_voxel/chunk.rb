# frozen_string_literal: true

module MagicaVoxel
  # The MagicaVoxel Chunk
  #
  # @since 0.1.0
  class Chunk
    class << self
      # Read Chunk
      #
      # @param data [IO] the stream to read
      #
      # @return [Enumerator<Chunk>] the chunk object
      #
      # @since 0.1.0
      def read(io)
        return enum_for(:read, io) unless defined?(yield)

        until io.eof?
          type, n_content, n_children = header(io)
          klass_name = Chunk::TYPES[type] || 'Chunk'
          yield MagicaVoxel
            .const_get(klass_name)
            .new(io.read(n_content), io.read(n_children))
        end
      end

      # Read Chunk Header
      #
      # @param data [IO] the stream to read
      #
      # @return [Array<String|Number>] type, content bytes, children bytes
      #
      # @since 0.1.0
      def header(io)
        [
          io.read(4),
          io.read(4).unpack1('L'),
          io.read(4).unpack1('L')
        ]
      end
    end

    include Enumerable

    # Chunk Type Mapping
    #
    # @since 0.1.0
    TYPES = {
      'MAIN' => 'Main',
      'SIZE' => 'Size',
      'XYZI' => 'XYZI',
      'RGBA' => 'RGBA'
    }.freeze

    # @param content [String] content data
    # @param children [String] children data
    #
    # @since 0.1.0
    def initialize(content, children)
      @children = Chunk.read(StringIO.new(children))
      Reader.open(content) do |reader|
        layout.each do |key, type|
          instance_variable_set(:"@#{key}", reader.send(type))
        end
      end
    end

    # :nodoc:
    #
    # @since 0.1.0
    def each(&block)
      @children.each(&block)
    end

    private

    # The Chunk Layout
    #
    # @return [Hash] the field name and types
    #
    # @sicne 0.1.0
    def layout
      {}
    end
  end
end
