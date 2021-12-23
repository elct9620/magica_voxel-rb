# frozen_string_literal: true

require 'stringio'

module MagicaVoxel
  # The MagicaVoxel file
  #
  # @since 0.1.0
  class File
    # @since 0.1.0
    attr_reader :path

    # @param path [String] the .vox file path
    #
    # @since 0.1.0
    def initialize(path)
      @path = path
    end

    # @return [String] format
    #
    # @since 0.1.0
    def format
      binary[0, 4].strip
    end

    # @return [Number] version
    #
    # @since 0.1.0
    def version
      @version ||= binary[4, 4].unpack1('L')
    end

    # @return [MagicaVoxel::Main] main chunk
    #
    # @since 0.1.0
    def root
      @root ||= Chunk.read(StringIO.new(binary[8..-1])).first
    end

    # @return [TrueClass|FalseClass] is valid MagicaVoxel file
    #
    # @since 0.1.0
    def valid?
      format == 'VOX'
    end

    # @return [String] binary
    #
    # @since 0.1.0
    def binary
      @binary ||= ::File.read(@path, mode: 'rb')
    end
  end
end
