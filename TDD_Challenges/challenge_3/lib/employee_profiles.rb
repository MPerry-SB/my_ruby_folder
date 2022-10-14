class EmployeeProfiles
  def filter_by_age(employee_profiles, age:)
    results = []
    employee_profiles.select do |_key, employee_profile|
      results << employee_profile[:employee_id] if employee_profile[:age] >= age
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
