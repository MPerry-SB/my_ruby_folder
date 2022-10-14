class EmployeeProfiles
  def filter_by_age(employee_profiles, age:)
    employee_profiles
      .select { |_, employee_profile| employee_profile[:age] >= age }
      .map {|_, employee_profile| employee_profile[:employee_id] }
  end

  def is_employee_working?(holiday_list, date, employee_id)
    holiday_list.flatten.select do |holiday|
      return true if holiday[:date] == date && holiday[:employee_id] == employee_id
    end
    false
  end
end
