# frozen_string_literal: true

module MagicaVoxel
  # The Chunk type RGBA
  #
  # @since 0.1.0
  class RGBA < Chunk
    # @since 0.1.0
    attr_reader :pattle

    # :nodoc
    #
    # @since 0.1.0
    def inspect
      '#<MagicaVoxel::Color>'
    end

    private

    # :nodoc:
    #
    # @since 0.1.0
    def layout
      {
        pattle: :pattle
      }
    end
  end
end
