class EmployeeProfiles
  def filter_employee_by_age(hr_profile, age:)
    results = []
    hr_profile.select do |_key, hash|
      results << hash[:employee_id] if hash[:age] >= age
    end
    results
  end

  def is_employee_working?(holiday_list, date, employee_id)
    holiday_list.flatten.select do |holiday|
      return true if holiday[:date] == date && holiday[:employee_id] == employee_id
    end
    false
  end
end
