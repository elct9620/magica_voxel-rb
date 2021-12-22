# frozen_string_literal: true

RSpec.describe MagicaVoxel::Chunk do
  subject(:chunk) { described_class.new(content, children) }

  let(:content) { '' }
  let(:children) { '' }

  describe '#children' do
    subject { chunk.children }

    it { is_expected.to be_empty }

    context 'when children exists' do
      let(:children) { "SIZE\f\x00\x00\x00\x00\x00\x00\x00" }
      it { is_expected.not_to be_empty }
    end
  end
end
