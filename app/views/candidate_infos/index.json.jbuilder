json.array!(@candidate_infos) do |candidate_info|
  json.extract! candidate_info, :id, :sex, :age, :address, :mobile, :email, :pan, :married, :spouse_name, :education, :occupation, :income_for_2012_2013
  json.url candidate_info_url(candidate_info, format: :json)
end
