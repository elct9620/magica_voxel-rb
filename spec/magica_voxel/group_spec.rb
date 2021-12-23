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

  let(:node) { group }
  it_behaves_like 'node'

  describe '#child_ids' do
    subject { group.child_ids }

    it { is_expected.to include(2) }
  end
end
