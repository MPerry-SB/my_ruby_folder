class DisplayProfiles
  def filter_employee_by_age(hr_profile, age:)
    results = []
    hr_profile.select do |_key, hash|
      if hash[:age] == age
        results << hash[:employee_id]
      end
    end
    results
  end
end
