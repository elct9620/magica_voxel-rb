# frozen_string_literal: true

RSpec.describe MagicaVoxel::Camera do
  subject(:camera) { described_class.new(content, '') }

  let(:content) do
    "\x01\x00\x00\x00" \
      "\x06\x00\x00\x00" \
      "\x05\x00\x00\x00_mode" \
      "\x04\x00\x00\x00pers" \
      "\x06\x00\x00\x00_focus" \
      "\x05\x00\x00\x000 0 0" \
      "\x06\x00\x00\x00_angle" \
      "\x05\x00\x00\x001 1 1" \
      "\x07\x00\x00\x00_radius" \
      "\x02\x00\x00\x0010" \
      "\x08\x00\x00\x00_frustum" \
      "\x05\x00\x00\x000.421" \
      "\x04\x00\x00\x00_fov" \
      "\x02\x00\x00\x0045"
  end

  describe '#id' do
    subject { camera.id }

    it { is_expected.to eq(1) }
  end

  describe '#focus' do
    subject { camera.focus }

    it { is_expected.to eq(MagicaVoxel::Vector3.new(0.0, 0.0, 0.0)) }
  end

  describe '#angle' do
    subject { camera.angle }

    it { is_expected.to eq(MagicaVoxel::Vector3.new(1.0, 1.0, 1.0)) }
  end

  describe '#radius' do
    subject { camera.radius }

    it { is_expected.to eq(10) }
  end

  describe '#frustum' do
    subject { camera.frustum }

    it { is_expected.to eq(0.421) }
  end

  describe '#fov' do
    subject { camera.fov }

    it { is_expected.to eq(45) }
  end

  describe '#inspect' do
    subject { camera.inspect }

    it { is_expected.to match(/id=1/) }
    it { is_expected.to match(/focus=[^,]*x=0.0, y=0.0, z=0.0/) }
    it { is_expected.to match(/angle=[^,]*x=1.0, y=1.0, z=1.0/) }
    it { is_expected.to match(/radius=10/) }
    it { is_expected.to match(/frustum=0.421/) }
    it { is_expected.to match(/fov=45/) }
  end
end
