json.array!(@territories) do |territory|
  json.extract! territory, :id, :code, :name
  json.url territory_url(territory, format: :json)
end
