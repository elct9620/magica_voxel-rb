# frozen_string_literal: true

module MagicaVoxel
  # The Chunk type XYZI
  #
  # @since 0.1.0
  class XYZI < Chunk
    # @since 0.1.0
    attr_reader :voxels

    # :nodoc:
    #
    # @return 0.1.0
    def inspect
      "#<MagicaVoxel::XYZI size=#{voxels.size}>"
    end

    private

    # :nodoc:
    #
    # @since 0.1.0
    def layout
      {
        voxels: :voxels
      }
    end
  end
end
