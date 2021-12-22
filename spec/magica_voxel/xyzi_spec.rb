# frozen_string_literal: true

RSpec.describe MagicaVoxel::XYZI do
  subject(:xyzi) { described_class.new("\x01\x00\x00\x00\x01\x02\x03\x01", '') }

  describe '#size' do
    subject { xyzi.size }

    it { is_expected.to eq(1) }
  end

  describe '#voxels' do
    subject { xyzi.voxels }

    it { is_expected.to include(MagicaVoxel::Voxel.new(1, 2, 3, 1)) }
  end

  describe '#inspect' do
    subject { xyzi.inspect }

    it { is_expected.to match(/size=\d+/) }
  end
end
