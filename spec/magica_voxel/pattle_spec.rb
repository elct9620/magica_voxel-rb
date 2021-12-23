# frozen_string_literal: true

RSpec.describe MagicaVoxel::Pattle do
  subject(:rgba) { described_class.new("\xFF\xFF\xFF\xFF" * 256, '') }

  describe '#[]' do
    subject { rgba.pattle[0] }

    it { is_expected.to eq(MagicaVoxel::Color.new(255, 255, 255, 255)) }
  end

  describe '#pattle' do
    subject { rgba.pattle }

    it { is_expected.to include(MagicaVoxel::Color.new(255, 255, 255, 255)) }
  end

  describe '#inspect' do
    subject { rgba.inspect }

    it { is_expected.to eq('#<MagicaVoxel::Pattle>') }
  end
end
