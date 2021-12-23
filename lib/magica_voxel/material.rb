# frozen_string_literal: true

module MagicaVoxel
  # The Chunk type MATL
  #
  # @since 0.1.0
  class Material < Chunk
    # @since 0.1.0
    attr_reader :id, :properties

    # Material Type
    #
    # @return [String]
    #
    # @since 0.1.0
    def type
      @type ||= @properties['_type'][1..-1]
    end

    # Weight
    #
    # @return [Number]
    #
    # @since 0.2.0
    def weight
      @weight ||= @properties['_weight'].to_f
    end

    # Roughness
    #
    # @return [Number]
    #
    # @since 0.2.0
    def roughness
      @roughness ||= @properties['_rough'].to_f
    end

    # Specular
    #
    # @return [Number]
    #
    # @since 0.2.0
    def specular
      @specular ||= @properties['_spec'].to_f
    end

    # Index of Refraction
    #
    # @return [Number]
    #
    # @since 0.2.0
    def ior
      @ior ||= @properties['_ior'].to_f
    end

    # TODO: Att
    #
    # @return [Number]
    #
    # @since 0.2.0
    def att
      @att ||= @properties['_att'].to_f
    end

    # TODO: Flux
    #
    # @return [Number]
    #
    # @since 0.2.0
    def flux
      @flux ||= @properties['_flux'].to_f
    end

    # TODO: Plastic
    #
    # @return [TureClass|FalseClass]
    #
    # @since 0.1.0
    def plastic?
      @properties['_plastic'] == '1'
    end

    # :nodoc:
    #
    # @since 0.1.0
    def inspect
      '#<MagicaVoxel::Material ' \
        "id=#{id}, type=#{type}, " \
        "weight=#{weight}, roughness=#{roughness}, " \
        "specular=#{specular}, ior=#{ior}, " \
        "att=#{att}, flux=#{flux}, " \
        "plastic=#{plastic?}>"
    end

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
