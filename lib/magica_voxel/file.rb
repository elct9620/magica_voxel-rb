# frozen_string_literal: true

require 'stringio'

module MagicaVoxel
  # The MagicaVoxel file
  #
  # @since 0.1.0
  class File
    # @since 0.1.0
    attr_reader :path, :format, :version, :root

    # @param path [String] the .vox file path
    #
    # @since 0.1.0
    def initialize(path)
      @path = path
      ::File.open(@path, mode: 'rb') do |io|
        @format = io.read(4).strip
        @version = io.read(4).unpack1('L')
        @root = Chunk.read(io).first
      end
    end

    # @return [TrueClass|FalseClass] is valid MagicaVoxel file
    #
    # @since 0.1.0
    def valid?
      format == 'VOX'
    end
  end
end
