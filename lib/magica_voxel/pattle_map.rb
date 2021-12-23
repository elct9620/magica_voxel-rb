# frozen_string_literal: true

module MagicaVoxel
  # The Chunk type IMAP
  #
  # @since 0.1.0
  class PattleMap < Chunk
    # @since 0.1.0
    attr_reader :items

    private

    # :nodoc:
    #
    # @since 0.1.0
    def layout
      {
        items: :imap
      }
    end
  end
end
