# frozen_string_literal: true

RSpec.describe MagicaVoxel::Model do
  subject(:xyzi) { described_class.new("\x01\x00\x00\x00\x01\x02\x03\x01", '') }

  describe '#voxels' do
    subject { xyzi.voxels }

    it { is_expected.to include(MagicaVoxel::Voxel.new(1, 2, 3, 1)) }
  end

  describe '#inspect' do
    subject { xyzi.inspect }

    it { is_expected.to match(/size=\d+/) }
  end
end
