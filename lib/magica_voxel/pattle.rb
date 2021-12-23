# frozen_string_literal: true

module MagicaVoxel
  # The Chunk type RGBA
  #
  # @since 0.1.0
  class Pattle < Chunk
    # @since 0.1.0
    attr_reader :pattle

    # Get color by index
    #
    # @param id [Number]
    #
    # @return [MagicaVoxel::Color]
    #
    # @since 0.1.0
    def [](id)
      @pattle[id]
    end

    # :nodoc
    #
    # @since 0.1.0
    def inspect
      '#<MagicaVoxel::Pattle>'
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
