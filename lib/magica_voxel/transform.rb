# frozen_string_literal: true

module MagicaVoxel
  # The Chunk type nTRN
  #
  # @since 0.1.0
  class Transform < Chunk
    # @since 0.1.0
    attr_reader :node_id, :attributes, :child_id, :reserved_id, :layer_id, :frames

    # @return [String] name
    #
    # @since 0.1.0
    def name
      @attributes['_name']
    end

    # @return [TrueClass|FalseClass] is hidden
    #
    # @since 0.1.0
    def hidden?
      @attributes['_hidden'] == '1'
    end

    # :nodoc:
    #
    # @since 0.1.0
    def inspect
      "#<MagicaVoxel::Transform node_id=#{node_id}>"
    end

    private

    # :nodoc:
    #
    # @since 0.1.0
    def layout
      {
        node_id: :int32,
        attributes: :dict,
        child_id: :int32,
        reserved_id: :int32,
        layer_id: :int32,
        frames: :frames
      }
    end
  end
end
