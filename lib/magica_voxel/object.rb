# frozen_string_literal: true

module MagicaVoxel
  # The Chunk type rOBJ
  #
  # @since 0.1.0
  class Object < Chunk
    # @since 0.1.0
    attr_reader :attributes

    private

    # :nodoc:
    #
    # @since 0.1.0
    def layout
      {
        attributes: :dict
      }
    end
  end
end
