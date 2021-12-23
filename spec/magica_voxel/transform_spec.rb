# frozen_string_literal: true

RSpec.describe MagicaVoxel::Transform do
  subject(:transform) { described_class.new(content, '') }

  let(:content) do
    "\x00\x00\x00\x00" \
      "\x02\x00\x00\x00" \
      "\x05\x00\x00\x00_name" \
      "\x03\x00\x00\x00chr" \
      "\x07\x00\x00\x00_hidden" \
      "\x01\x00\x00\x000" \
      "\x01\x00\x00\x00" \
      "\x00\x00\x00\x00" \
      "\x00\x00\x00\x00" \
      "\x01\x00\x00\x00" \
      "\x03\x00\x00\x00" \
      "\x02\x00\x00\x00_r" \
      "\x01\x00\x00\x000" \
      "\x02\x00\x00\x00_t" \
      "\x01\x00\x00\x000" \
      "\x02\x00\x00\x00_f" \
      "\x01\x00\x00\x000" \
  end

  describe '#node_id' do
    subject { transform.node_id }

    it { is_expected.to eq(0) }
  end

  describe '#name' do
    subject { transform.name }

    it { is_expected.to eq('chr') }
  end

  describe '#hidden?' do
    it { is_expected.not_to be_hidden }
  end
end
