class EmployeeProfiles
 def initialize(employee_profiles = {})
  @employee_profiles = employee_profiles
 end
  def filter_by_age(age:)
    @employee_profiles
      .select { |_, employee_profile| employee_profile[:age] >= age }
      .map {|_, employee_profile| employee_profile[:employee_id] }
  end

  def is_employee_working?(holidays, date, employee_id)
    holidays.flatten.any? do |holiday|
      holiday[:date] == date && holiday[:employee_id] == employee_id
    end
  end
end
