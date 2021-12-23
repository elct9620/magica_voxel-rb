# frozen_string_literal: true

module MagicaVoxel
  # The Chunk type rCAM
  #
  # @since 0.1.0
  class Camera < Chunk
    # @since 0.1.0
    attr_reader :id, :attributes

    # Mode
    #
    # @return [String]
    #
    # @since 0.3.0
    def mode
      @attributes['_mode']
    end

    # Focus
    #
    # @return [MagicaVoxel::Vector3]
    #
    # @since 0.3.0
    def focus
      @focus ||= Vector3.new(*@attributes['_focus'].split.map(&:to_f))
    end

    # Angle
    #
    # @return [MagicaVoxel::Vector3]
    #
    # @since 0.3.0
    def angle
      @angle ||= Vector3.new(*@attributes['_angle'].split.map(&:to_f))
    end

    # Radius
    #
    # @return [Number]
    #
    # @since 0.3.0
    def radius
      @radius ||= @attributes['_radius'].to_i
    end

    # Frustum
    #
    # @return [Number]
    #
    # @since 0.3.0
    def frustum
      @frustum ||= @attributes['_frustum'].to_f
    end

    # Field of View
    #
    # @return [Number]
    #
    # @since 0.3.0
    def fov
      @fov ||= @attributes['_fov'].to_i
    end

    # :nodoc:
    #
    # @since 0.1.0
    def inspect
      "#<MagicaVoxel::Camera id=#{id}, mode=#{mode}, " \
        "focus=#{focus}, angle=#{angle}, " \
        "radius=#{radius}, frustum=#{frustum}, " \
        "fov=#{fov}>"
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
