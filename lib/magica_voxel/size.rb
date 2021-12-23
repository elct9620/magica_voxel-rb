# frozen_string_literal: true

module MagicaVoxel
  # The Chunk type SIZE
  #
  # @since 0.1.0
  class Size < Chunk
    # @since 0.1.0
    attr_reader :x, :y, :z

    # :nodoc:
    #
    # @since 0.1.0
    def inspect
      "#<MagicaVoxel::Size x=#{x}, y=#{y}, z=#{z}>"
    end

    private

    # :nodoc:
    #
    # @since 0.1.0
    def layout
      {
        x: :int32,
        y: :int32,
        z: :int32
      }
    end
  end
end
