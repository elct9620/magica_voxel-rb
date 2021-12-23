# frozen_string_literal: true

module MagicaVoxel
  # The Chunk type MAIN
  #
  # @since 0.1.0
  class Main < Chunk
    # @return [Array<Array<MagicaVoxel::Size, MagicaVoxel::Model>>]
    #
    # @since 0.1.0
    def models
      select { |chunk| chunk.is_a?(MagicaVoxel::Size) || chunk.is_a?(MagicaVoxel::Model) }
        .each_slice(2)
    end
  end
end
