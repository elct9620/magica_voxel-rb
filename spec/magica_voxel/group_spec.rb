# frozen_string_literal: true

RSpec.describe MagicaVoxel::Group do
  subject(:group) { described_class.new(content, '') }

  let(:content) do
    "\x00\x00\x00\x00" \
      "\x02\x00\x00\x00" \
      "\x05\x00\x00\x00_name" \
      "\x03\x00\x00\x00chr" \
      "\x07\x00\x00\x00_hidden" \
      "\x01\x00\x00\x000" \
      "\x01\x00\x00\x00" \
      "\x02\x00\x00\x00"
  end

  describe '#node_id' do
    subject { group.node_id }

    it { is_expected.to eq(0) }
  end

  describe '#name' do
    subject { group.name }

    it { is_expected.to eq('chr') }
  end

  describe '#hidden?' do
    it { is_expected.not_to be_hidden }
  end

  describe '#child_ids' do
    subject { group.child_ids }

    it { is_expected.to include(2) }
  end

  describe '#inspect' do
    subject { group.inspect }

    it { is_expected.to match(/node_id=0/) }
    it { is_expected.to match(/name=chr/) }
    it { is_expected.to match(/hidden=false/) }
  end
end
