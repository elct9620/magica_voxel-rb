# frozen_string_literal: true

module MagicaVoxel
  # The Node type Chunk
  #
  # @since 0.1.0
  class Node < Chunk
    # @since 0.1.0
    attr_reader :node_id, :attributes

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
  end
end
