# frozen_string_literal: true

require_relative 'magica_voxel/version'
require_relative 'magica_voxel/reader'
require_relative 'magica_voxel/chunk'
require_relative 'magica_voxel/main'
require_relative 'magica_voxel/size'
require_relative 'magica_voxel/xyzi'
require_relative 'magica_voxel/pattle'
require_relative 'magica_voxel/file'

# The MagicaVoxel file parser
#
# @since 0.1.0
module MagicaVoxel
  # The Voxel Data
  #
  # @since 0.1.0
  Voxel = Struct.new(:x, :y, :z, :color)

  # The Voxel Color
  #
  # @since 0.1.0
  Color = Struct.new(:r, :g, :b, :a)
end
