json.array!(@personnels) do |personnel|
  json.extract! personnel, :id, :first_name, :last_name, :salutation, :mailing_list, :formally_affiliated, :informally_affiliated, :ibs_retiree, :ibs_rostered, :notes, :research_interests, :skills, :biography, :employee_id
  json.url personnel_url(personnel, format: :json)
end
