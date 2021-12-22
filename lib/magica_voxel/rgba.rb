# frozen_string_literal: true

module MagicaVoxel
  # The Chunk type RGBA
  #
  # @since 0.1.0
  class RGBA < Chunk
    # The color pattle
    #
    # @return [Array<MagicaVoxel::Color] colors
    #
    # @since 0.1.0
    def pattle
      @pattle ||= Array.new(256).map.with_index do |_, idx|
        r, g, b, a = @content[idx * 4, 4].unpack('CCCC')
        Color.new(r, g, b, a)
      end
    end

    # :nodoc
    #
    # @since 0.1.0
    def inspect
      '#<MagicaVoxel::Color>'
    end
  end
end
