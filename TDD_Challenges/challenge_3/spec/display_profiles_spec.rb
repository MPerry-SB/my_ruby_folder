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

  it 'check if employee working on a given date' do 
    holiday_list = [
      [employee_id: 111, date: '2021-12-30'],
      [employee_id: 222, date: '2021-12-29']
    ]

    described_class = DisplayProfiles.new
    employee_id = 111
    date = '2021-12-30'
    result = described_class.is_employee_working?(holiday_list, date, employee_id)

    expect(result).to eq true
  end
  
  example 'checks if multiple employes are working on a given date'
  example 'sort employees by location'
end
