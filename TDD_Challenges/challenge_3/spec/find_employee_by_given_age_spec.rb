require './lib/employee_profiles'
# intro employee object for employee_profiles
RSpec.describe EmployeeProfiles do
  it 'returns one employee id filtered by age' do
    employee_profiles = {
      pwu: { employee_id: 111, age: 65 },
      jwatson: { employee_id: 456, age: 27 }
    }

    result = EmployeeProfiles.new(employee_profiles).filter_by_age(age: 65)

    expect(result).to eq [111]
  end

  it 'returns two employee ids filtered by age' do
    employee_profiles = {
      pwu: { employee_id: 111, age: 65 },
      jwatson: { employee_id: 456, age: 27 },
      mperry: { employee_id: 123, age: 65 }
    }

    result = EmployeeProfiles.new(employee_profiles).filter_by_age(age: 65)

    expect(result).to eq [111, 123]
  end

  it 'positive check if employee working on a given date' do 
    holiday_list = [
      [employee_id: 111, date: '2021-12-30'],
      [employee_id: 222, date: '2021-12-29']
    ]

    employee_id = 111
    date = '2021-12-30'
    result = EmployeeProfiles.new.is_employee_working?(holiday_list, date, employee_id)

    expect(result).to eq true
  end
  
  it 'negative check if employee working on a given date' do 
    holiday_list = [
      [employee_id: 111, date: '2021-12-30'],
      [employee_id: 222, date: '2021-12-29']
    ]

    employee_id = 222
    date = '2021-12-30'
    result = EmployeeProfiles.new.is_employee_working?(holiday_list, date, employee_id)

    expect(result).to eq false
  end
  example 'sort employees by location'
end
