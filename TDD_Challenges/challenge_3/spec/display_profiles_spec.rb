require '../lib/display_profiles.rb'

RSpec.describe DisplayProfiles do
  it 'returns 123' do
    described_class = DisplayProfiles.new

    expect(described_class.my_method).to eq 123
  end
end



