# frozen_string_literal: true

RSpec.describe MagicaVoxel::Shape do
  subject(:shape) { described_class.new(content, '') }

  let(:content) do
    "\x00\x00\x00\x00" \
      "\x02\x00\x00\x00" \
      "\x05\x00\x00\x00_name" \
      "\x03\x00\x00\x00chr" \
      "\x07\x00\x00\x00_hidden" \
      "\x01\x00\x00\x000" \
      "\x01\x00\x00\x00" \
      "\x03\x00\x00\x00" \
      "\x01\x00\x00\x00" \
      "\x05\x00\x00\x00_type" \
      "\x04\x00\x00\x00test"
  end

  let(:node) { shape }
  it_behaves_like 'node'

  describe '#models' do
    subject { shape.models }

    it { is_expected.to include(MagicaVoxel::Shape::Model) }
  end
end
