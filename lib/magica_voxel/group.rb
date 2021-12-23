# frozen_string_literal: true

module MagicaVoxel
  # The Chunk type nGRP
  #
  # @since 0.1.0
  class Group < Node
    # @since 0.1.0
    attr_reader :child_ids

    # :nodoc:
    #
    # @since 0.1.0
    def inspect
      "#<MagicaVoxel::Group node_id=#{node_id}, name=#{name}, hidden=#{hidden?}>"
    end

    private

    # :nodoc:
    #
    # @since 0.1.0
    def layout
      {
        node_id: :int32,
        attributes: :dict,
        child_ids: :int32_array
      }
    end
  end
end
