# frozen_string_literal: true

RSpec.describe MagicaVoxel::Transform do
  subject(:transform) { described_class.new(content, '') }

  let(:content) do
    "\x00\x00\x00\x00" \
      "\x02\x00\x00\x00" \
      "\x05\x00\x00\x00_name" \
      "\x03\x00\x00\x00chr" \
      "\x07\x00\x00\x00_hidden" \
      "\x01\x00\x00\x000" \
      "\x01\x00\x00\x00" \
      "\x00\x00\x00\x00" \
      "\x00\x00\x00\x00" \
      "\x01\x00\x00\x00" \
      "\x03\x00\x00\x00" \
      "\x02\x00\x00\x00_r" \
      "\x01\x00\x00\x000" \
      "\x02\x00\x00\x00_t" \
      "\x01\x00\x00\x000" \
      "\x02\x00\x00\x00_f" \
      "\x01\x00\x00\x000" \
  end

  let(:node) { transform }
  it_behaves_like 'node'
end
