# frozen_string_literal: true

RSpec.describe MagicaVoxel::Camera do
  subject(:camera) { described_class.new(content, '') }

  let(:content) do
    "\x01\x00\x00\x00" \
      "\x01\x00\x00\x00" \
      "\x05\x00\x00\x00_mode" \
      "\x05\x00\x00\x00_test"
  end

  describe '#id' do
    subject { camera.id }

    it { is_expected.to eq(1) }
  end

  describe '#inspect' do
    subject { camera.inspect }

    it { is_expected.to match(/id=1/) }
  end
end
