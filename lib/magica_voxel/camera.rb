# frozen_string_literal: true

module MagicaVoxel
  # The Chunk type rCAM
  #
  # @since 0.1.0
  class Camera < Chunk
    # @since 0.1.0
    attr_reader :id, :attributes

    # :nodoc:
    #
    # @since 0.1.0
    def inspect
      "#<MagicaVoxel::Camera id=#{id}>"
    end

    private

    # :nodoc:
    #
    # @since 0.1.0
    def layout
      {
        id: :int32,
        attributes: :dict
      }
    end
  end
end
