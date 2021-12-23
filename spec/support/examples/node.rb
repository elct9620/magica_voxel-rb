# frozen_string_literal: true

RSpec.shared_examples 'node' do
  describe '#node_id' do
    subject { node.node_id }

    it { is_expected.to eq(0) }
  end

  describe '#name' do
    subject { node.name }

    it { is_expected.to eq('chr') }
  end

  describe '#hidden?' do
    it { is_expected.not_to be_hidden }
  end

  describe '#inspect' do
    subject { node.inspect }

    it { is_expected.to match(/node_id=0/) }
    it { is_expected.to match(/name=chr/) }
    it { is_expected.to match(/hidden=false/) }
  end
end
