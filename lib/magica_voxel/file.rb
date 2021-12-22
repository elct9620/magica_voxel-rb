# frozen_string_literal: true

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

    # @return [String] binary
    #
    # @since 0.1.0
    def binary
      @binary ||= ::File.read(@path, mode: 'rb')
    end
  end
end
