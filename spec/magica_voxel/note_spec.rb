# frozen_string_literal: true

RSpec.describe MagicaVoxel::Note do
  subject(:note) { described_class.new(content, '') }

  let(:content) do
    "\x02\x00\x00\x00" \
      "\x03\x00\x00\x00red" \
      "\x04\x00\x00\x00blue"
  end

  describe '#names' do
    subject { note.names }

    it { is_expected.to include('red') }
    it { is_expected.to include('blue') }
  end
end
