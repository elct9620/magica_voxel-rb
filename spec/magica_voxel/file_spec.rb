# frozen_string_literal: true

RSpec.describe MagicaVoxel::File do
  subject(:file) { described_class.new('path/model.vox') }

  let(:binary) { "VOX \x96\x00\x00\x00" }

  before do
    allow(File).to receive(:read)
      .with('path/model.vox', mode: 'rb')
      .and_return(binary)
  end

  describe '#format' do
    subject { file.format }

    it { is_expected.to eq('VOX') }
  end

  describe '#version' do
    subject { file.version }

    it { is_expected.to eq(150) }
  end

  describe '#valid?' do
    it { is_expected.to be_valid }

    context 'when binary invalid' do
      let(:binary) { "OBJ \x96\x00\x00\x00" }

      it { is_expected.not_to be_valid }
    end
  end
end
