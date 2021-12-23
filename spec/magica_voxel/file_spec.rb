# frozen_string_literal: true

RSpec.describe MagicaVoxel::File do
  subject(:file) { described_class.new('path/model.vox') }

  let(:io) { StringIO.new("VOX \x96\x00\x00\x00") }

  before do
    allow(File).to receive(:open)
      .with('path/model.vox', mode: 'rb')
      .and_yield(io)
  end

  describe '#format' do
    subject { file.format }

    it { is_expected.to eq('VOX') }
  end

  describe '#version' do
    subject { file.version }

    it { is_expected.to eq(150) }
  end

  describe '#root' do
    subject { file.root }

    let(:io) { StringIO.new("VOX \x96\x00\x00\x00MAIN\x00\x00\x00\x00\x00\x00\x00\x00") }

    it { is_expected.to be_a(MagicaVoxel::Main) }
  end

  describe '#valid?' do
    it { is_expected.to be_valid }

    context 'when format invalid' do
      let(:io) { StringIO.new("OBJ \x96\x00\x00\x00") }

      it { is_expected.not_to be_valid }
    end
  end
end
