# frozen_string_literal: true

module MagicaVoxel
  # The Chunk type nSHP
  #
  # @since 0.1.0
  class Shape < Node
    # :nodoc:
    class Model
      # @since 0.1.0
      attr_reader :id, :attributes

      # @param id [Number] the mode id
      # @param attributes [Hash] the model attributes
      #
      # @since 0.1.0
      def initialize(id, attributes)
        @id = id
        @attributes = attributes
      end
    end

    # @since 0.1.0
    attr_reader :models

    # :nodoc:
    #
    # @since 0.1.0
    def inspect
      "#<MagicaVoxel::Shape id=#{id}, name=#{name}, hidden=#{hidden?}>"
    end

    private

    # :nodoc:
    #
    # @since 0.1.0
    def layout
      {
        id: :int32,
        attributes: :dict,
        models: :shape_model
      }
    end
  end
end
