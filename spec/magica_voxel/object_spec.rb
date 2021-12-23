# frozen_string_literal: true

RSpec.describe MagicaVoxel::Object do
  subject(:object) { described_class.new(content, '') }

  let(:content) do
    "\x01\x00\x00\x00" \
      "\x05\x00\x00\x00_name" \
      "\x06\x00\x00\x00object"
  end

  describe '#attributes' do
    subject { object.attributes }

    it { is_expected.to include({ '_name' => 'object' }) }
  end
end
