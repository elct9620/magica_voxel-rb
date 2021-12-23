# frozen_string_literal: true

module MagicaVoxel
  # The Chunk type MATL
  class Material < Chunk
    # @since 0.1.0
    attr_reader :id, :properties

    # :nodoc:
    #
    # @since 0.1.0
    def inspect
      "#<MagicaVoxel::Material id=#{id}>"
    end

    # TODO: Expose Properties

    private

    # :nodoc:
    #
    # @since 0.1.0
    def layout
      {
        id: :int32,
        properties: :dict
      }
    end
  end
end
