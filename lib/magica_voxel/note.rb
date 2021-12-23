# frozen_string_literal: true

module MagicaVoxel
  # The Chunk type NOTE
  #
  # @since 0.1.0
  class Note < Chunk
    # @since 0.1.0
    attr_reader :names

    private

    # :nodoc:
    #
    # @since 0.1.0
    def layout
      {
        names: :string_array
      }
    end
  end
end
