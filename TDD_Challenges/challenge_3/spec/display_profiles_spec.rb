require './lib/display_profiles'

RSpec.describe DisplayProfiles do
  it 'filters employee by age' do
    hr_profile = {
      pwu: { employee_id: 111, age: 65 },
      jwatson: { employee_id: 456, age: 27 }
    }
    described_class = DisplayProfiles.new

    result = described_class.my_method(hr_profile, age: 65)

    expect(result).to eq 111
  end

  example 'is employee working on a given date'
  example 'sort employees by location'
end
