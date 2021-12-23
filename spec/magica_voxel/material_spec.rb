# frozen_string_literal: true

RSpec.describe MagicaVoxel::Material do
  subject(:material) { described_class.new(content, '') }

  let(:content) do
    "\x01\x00\x00\x00" \
      "\x01\x00\x00\x00" \
      "\x05\x00\x00\x00_type" \
      "\x05\x00\x00\x00_emit"
  end

  describe '#id' do
    subject { material.id }

    it { is_expected.to eq(1) }
  end

  describe '#inspect' do
    subject { material.inspect }

    it { is_expected.to match(/id=1/) }
  end
end
