# frozen_string_literal: true

module MagicaVoxel
  # The Chunk type nTRN
  #
  # @since 0.1.0
  class Transform < Node
    # @since 0.1.0
    attr_reader :child_id, :reserved_id, :layer_id, :frames

    # :nodoc:
    #
    # @since 0.1.0
    def inspect
      "#<MagicaVoxel::Transform id=#{id}, name=#{name}, hidden=#{hidden?}>"
    end

    private

    # :nodoc:
    #
    # @since 0.1.0
    def layout
      {
        id: :int32,
        attributes: :dict,
        child_id: :int32,
        reserved_id: :int32,
        layer_id: :int32,
        frames: :frames
      }
    end
  end
end
