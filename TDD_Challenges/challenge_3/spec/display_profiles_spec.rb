require './lib/display_profiles'

RSpec.describe DisplayProfiles do
  it 'returns one employee id filtered by age' do
    hr_profile = {
      pwu: { employee_id: 111, age: 65 },
      jwatson: { employee_id: 456, age: 27 }
    }
    described_class = DisplayProfiles.new

    result = described_class.filter_employee_by_age(hr_profile, age: 65)

    expect(result).to eq [111]
  end

  it 'returns two employee ids filtered by age' do
    hr_profile = {
      pwu: { employee_id: 111, age: 65 },
      jwatson: { employee_id: 456, age: 27 },
      mperry: { employee_id: 123, age: 65 }
    }
    described_class = DisplayProfiles.new

    result = described_class.filter_employee_by_age(hr_profile, age: 65)

    expect(result).to eq [111, 123]
  end

  example 'is employee working on a given date'
  example 'sort employees by location'
end
