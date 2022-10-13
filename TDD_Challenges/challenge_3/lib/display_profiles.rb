class DisplayProfiles # code smell? class doesn't describe the domain
  def filter_employee_by_age(hr_profile, age:)
    results = []
    hr_profile.select do |_key, hash|
      results << hash[:employee_id] if hash[:age] >= age
    end
    results
  end

  def is_employee_working?(holiday_list, date, employee_id)
    holiday_list.flatten.select { |holiday| 
      if holiday[:date] == date && holiday[:employee_id] == employee_id
        return true
      end
    }
    false
  end
end


