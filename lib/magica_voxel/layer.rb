# frozen_string_literal: true

module MagicaVoxel
  # The Chunk type LAYR
  #
  # TODO: Remove dependency on Node
  #
  # @since 0.1.0
  class Layer < Node
    # @since 0.1.0
    attr_reader :reserved_id

    # :nodoc:
    #
    # @since 0.1.0
    def inspect
      "#<MagicaVoxel::Layer id=#{id}, name=#{name}, hidden=#{hidden?}>"
    end

    # TODO: Expose Properties

    private

    # :nodoc:
    #
    # @since 0.1.0
    def layout
      {
        id: :int32,
        attributes: :dict,
        reversed_id: :int32
      }
    end
  end
end
