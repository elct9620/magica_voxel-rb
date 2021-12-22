# frozen_string_literal: true

RSpec.describe MagicaVoxel::Size do
  subject(:size) { described_class.new("\x01\x00\x00\x00\x02\x00\x00\x00\x03\x00\x00\x00", '') }

  describe '#x' do
    subject { size.x }

    it { is_expected.to eq(1) }
  end

  describe '#y' do
    subject { size.y }

    it { is_expected.to eq(2) }
  end

  describe '#z' do
    subject { size.z }

    it { is_expected.to eq(3) }
  end

  describe '#inspect' do
    subject { size.inspect }

    it { is_expected.to match(/x=\d+, y=\d+, z=\d+/) }
  end
end
