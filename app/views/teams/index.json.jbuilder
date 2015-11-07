json.array!(@teams) do |team|
  json.extract! team, :id, :FullName, :BDate, :Address, :Telephone
  json.url team_url(team, format: :json)
end
