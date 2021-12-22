# frozen_string_literal: true

module MagicaVoxel
  # The Chunk type SIZE
  #
  # @since 0.1.0
  class Size < Chunk
    # @return [Number] x
    #
    # @since 0.1.0
    def x
      @x ||= @content[0, 4].unpack1('l')
    end

    # @return [Number] y
    #
    # @since 0.1.0
    def y
      @y ||= @content[4, 4].unpack1('l')
    end

    # @return [Number] z
    #
    # @since 0.1.0
    def z
      @z ||= @content[8, 4].unpack1('l')
    end

    # :nodoc:
    #
    # @since 0.1.0
    def inspect
      "#<MagicaVoxel::Size x=#{x}, y=#{y}, z=#{z}>"
    end
  end
end
