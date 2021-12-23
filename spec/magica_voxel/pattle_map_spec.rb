# frozen_string_literal: true

RSpec.describe MagicaVoxel::PattleMap do
  subject(:map) { described_class.new(content, '') }

  let(:content) do
    "\x01\x00\x00\x00" * 256
  end

  describe '#items' do
    subject { map.items }

    it { is_expected.to include(1) }
  end
end
