# frozen_string_literal: true

RSpec.describe MagicaVoxel::File do
  subject(:file) { described_class.new('path/model.vox') }

  describe '#binary' do
    subject { file.binary }

    before do
      allow(File).to receive(:read)
        .with('path/model.vox', mode: 'rb')
        .and_return('VOX ')
    end

    it { is_expected.to eq('VOX ') }
  end
end
