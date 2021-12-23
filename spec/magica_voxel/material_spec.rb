# frozen_string_literal: true

RSpec.describe MagicaVoxel::Material do
  subject(:material) { described_class.new(content, '') }

  let(:content) do
    "\x01\x00\x00\x00" \
      "\x08\x00\x00\x00" \
      "\x05\x00\x00\x00_type" \
      "\x05\x00\x00\x00_emit" \
      "\x07\x00\x00\x00_weight" \
      "\x03\x00\x00\x000.3" \
      "\x06\x00\x00\x00_rough" \
      "\x03\x00\x00\x000.1" \
      "\x05\x00\x00\x00_spec" \
      "\x03\x00\x00\x000.2" \
      "\x04\x00\x00\x00_ior" \
      "\x03\x00\x00\x000.3" \
      "\x04\x00\x00\x00_att" \
      "\x03\x00\x00\x000.1" \
      "\x05\x00\x00\x00_flux" \
      "\x03\x00\x00\x000.2" \
      "\x08\x00\x00\x00_plastic" \
      "\x03\x00\x00\x001"
  end

  describe '#id' do
    subject { material.id }

    it { is_expected.to eq(1) }
  end

  describe '#type' do
    subject { material.type }

    it { is_expected.to eq('emit') }
  end

  describe '#weight' do
    subject { material.weight }

    it { is_expected.to eq(0.3) }
  end

  describe '#roughness' do
    subject { material.roughness }

    it { is_expected.to eq(0.1) }
  end

  describe '#specular' do
    subject { material.specular }

    it { is_expected.to eq(0.2) }
  end

  describe '#ior' do
    subject { material.ior }

    it { is_expected.to eq(0.3) }
  end

  describe '#att' do
    subject { material.att }

    it { is_expected.to eq(0.1) }
  end

  describe '#flux' do
    subject { material.flux }

    it { is_expected.to eq(0.2) }
  end

  describe '#plastic?' do
    it { is_expected.to be_plastic }
  end

  describe '#inspect' do
    subject { material.inspect }

    it { is_expected.to match(/id=1/) }
    it { is_expected.to match(/type=emit/) }
    it { is_expected.to match(/weight=0.3/) }
    it { is_expected.to match(/roughness=0.1/) }
    it { is_expected.to match(/specular=0.2/) }
    it { is_expected.to match(/ior=0.3/) }
    it { is_expected.to match(/att=0.1/) }
    it { is_expected.to match(/flux=0.2/) }
    it { is_expected.to match(/plastic=true/) }
  end
end
