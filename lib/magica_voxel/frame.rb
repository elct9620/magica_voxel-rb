# frozen_string_literal: true

require 'matrix'

module MagicaVoxel
  # The Frame of Transform
  #
  # @since 0.1.0
  class Frame
    # @param [Hash] attributes
    #
    # @since 0.1.0
    def initialize(attributes)
      @attributes = attributes
    end

    # Rotation
    #
    # @return [Matrix]
    #
    # @since 0.1.0
    def rotation
      nil # TODO
    end

    # Translate
    #
    # @return [Vector3]
    #
    # @since 0.1.0
    def translate
      return Vector3.new(0, 0, 0) if @attributes['_t'].nil?

      x, y, z = @attributes['_t'].split
      @translate ||=
        Vector3.new(x.to_i, y.to_i, z.to_i)
    end

    # Index
    #
    # @return [Number]
    def index
      return 0 if @attributes['_f'].nil?

      @index ||= @attributes['_f'].to_i
    end

    # :nodoc:
    #
    # @since 0.1.0
    def inspect
      "#<MagicaVoxel::Frame index=#{index}, translate=#{translate}>"
    end
  end
end
