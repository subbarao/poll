json.array!(@candidates) do |candidate|
  json.extract! candidate, :id, :name, :sex, :age, :address, :mobile, :email, :pan, :married, :spouse_name, :education, :occupation, :income_for_2012_2013
  json.url candidate_url(candidate, format: :json)
end
