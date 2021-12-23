# frozen_string_literal: true

module MagicaVoxel
  # The Data Reader
  #
  # @since 0.1.0
  class Reader
    class << self
      # Open IO stream
      #
      # @param [IO|String] the stream to read
      #
      # @since 0.1.0
      def open(io)
        io = io.is_a?(IO) ? io : StringIO.new(io)
        yield new(io)
        io.close
      end
    end
    # @param [IO] the stream to read
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
      @io.read(4).unpack1('L')
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
  end
end
