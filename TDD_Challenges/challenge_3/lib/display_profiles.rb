class DisplayProfiles
  def filter_employee_by_age(hr_profile, age:)
    hr_profile.select do |_key, hash|
      hash[:age] == age
      return hash[:employee_id]
    end
  end
end
