# frozen_string_literal: true

RSpec.describe MagicaVoxel::Frame do
  subject(:frame) { described_class.new({ '_t' => '1 2 3', '_f' => '1' }) }

  describe '#translate' do
    subject { frame.translate }

    it { is_expected.to eq(MagicaVoxel::Vector3.new(1, 2, 3)) }
  end

  describe '#index' do
    subject { frame.index }

    it { is_expected.to eq(1) }
  end

  describe '#inspect' do
    subject { frame.inspect }

    it { is_expected.to match(/index=1/) }
    it { is_expected.to match(/MagicaVoxel::Vector3 x=1, y=2, z=3/) }
  end
end
