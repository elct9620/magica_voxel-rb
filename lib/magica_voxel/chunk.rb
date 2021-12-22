# frozen_string_literal: true

module MagicaVoxel
  # The MagicaVoxel Chunk
  #
  # @since 0.1.0
  class Chunk
    class << self
      # Read Chunk
      #
      # @param data [String] the data to read
      #
      # @return [Array<Chunk>] the chunk object
      #
      # @since 0.1.0
      def read(data)
        pos = 0
        chunks = []
        until pos >= data.bytesize
          type, n_content, n_children = header(data[pos, 12])
          klass_name = Chunk::TYPES[type] || 'Chunk'
          chunks << MagicaVoxel.const_get(klass_name).new(data[pos + 12, n_content],
                                                          data[pos + 12 + n_content, n_children])
          pos += 12 + n_content + n_children
        end
        chunks
      end

      # Read Chunk Header
      #
      # @param data [String] the data to read
      #
      # @return [Array<String|Number>] type, content bytes, children bytes
      #
      # @since 0.1.0
      def header(data)
        [
          data[0, 4],
          data[4, 4].unpack1('L'),
          data[8, 4].unpack1('L')
        ]
      end
    end

    # Chunk Type Mapping
    #
    # @since 0.1.0
    TYPES = {
      'MAIN' => 'Main'
    }.freeze

    # @param content [String] content data
    # @param children [String] children data
    #
    # @since 0.1.0
    def initialize(content, children)
      @content = content
      @_children = children
    end

    # @return [MagicaVoxel::Chunk] return children chunks
    #
    # @since 0.1.0
    def children
      @children ||= Chunk.read(@_children)
    end
  end
end
