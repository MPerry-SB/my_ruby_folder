class EmployeeProfiles
  def filter_by_age(employee_profiles, age:)
    results = []
    employee_profiles.select do |_key, hash|
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
