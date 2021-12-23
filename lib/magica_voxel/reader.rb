# frozen_string_literal: true

module MagicaVoxel
  # The Data Reader
  #
  # @since 0.1.0
  class Reader
    class << self
      # Open IO stream
      #
      # @param io [IO|String] the stream to read
      #
      # @since 0.1.0
      def open(io)
        io = io.is_a?(IO) ? io : StringIO.new(io)
        yield new(io)
        io.close
      end
    end
    # @param io [IO] the stream to read
    #
    # @since 0.1.0
    def initialize(io)
      @io = io
    end

    # Read int32
    #
    # @return [Number]
    #
    # @since 0.1.0
    def int32
      @io.read(4).unpack1('l')
    end

    # Read String
    #
    # @return [String]
    #
    # @since 0.1.0
    def string
      @io.read(int32)
    end

    # Read Dictionary
    #
    # @return [Hash{String => String}]
    #
    # @since 0.1.0
    def dict
      Hash[*Array.new(int32 * 2).map { string }]
    end

    # Read Int32 Array
    #
    # @return [Array<Number>]
    #
    # @since 0.1.0
    def int32_array
      Array.new(int32).map { int32 }
    end

    # Read String Array
    #
    # @return [Array<String>]
    #
    # @since 0.1.0
    def string_array
      Array.new(int32).map { string }
    end

    # Read Frames
    #
    # @return [Array<MagicaVoxel::Frame>]
    #
    # @since 0.1.0
    def frames
      Array.new(int32).map { Frame.new(dict) }
    end

    # Read Pattle
    #
    # @return [Array<MagicaVoxel::Color]
    #
    # @since 0.1.0
    def pattle
      Array.new(256).map { rgba }
    end

    # Read RGBA
    #
    # @return [MagicaVoxel::Color]
    #
    # @since 0.1.0
    def rgba
      r, g, b, a = @io.read(4).unpack('CCCC')
      Color.new(r, g, b, a)
    end

    # Read Pattle Index MAP
    #
    # @return [Array<Number>]
    #
    # @since 0.1.0
    def imap
      Array.new(256).map { int32 }
    end

    # Read Voxels
    #
    # @return [Array<MagicaVoxel::Voxel>]
    #
    # @since 0.1.0
    def voxels
      Array.new(int32).map { voxel }
    end

    # Read Voxel
    #
    # @return [MagicaVoxel::Voxel]
    #
    # @since 0.1.0
    def voxel
      x, y, z, i = @io.read.unpack('cccC')
      Voxel.new(x, y, z, i)
    end

    # Read Shape's Model
    #
    # @return [MagicaVoxel::Shape::Model]
    #
    # @since 0.1.0
    def shape_model
      Array.new(int32).map { Shape::Model.new(int32, dict) }
    end
  end
end
