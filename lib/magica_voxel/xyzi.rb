# frozen_string_literal: true

module MagicaVoxel
  # The Chunk type XYZI
  #
  # @since 0.1.0
  class XYZI < Chunk
    # @return [Number] numbers of voxel
    #
    # @since 0.1.0
    def size
      @size ||= @content[0, 4].unpack1('L')
    end

    # @return [Array<MagicaVoxel::Voxel>] voxels
    #
    # @since 0.1.0
    def voxels
      @voxels ||= Array.new(size).map.with_index do |_, idx|
        x, y, z, color = @content[4 + (idx * 4), 4].unpack('cccC')
        Voxel.new(x, y, z, color)
      end
    end

    # :nodoc:
    #
    # @return 0.1.0
    def inspect
      "#<MagicaVoxel::XYZI size=#{size}>"
    end
  end
end
