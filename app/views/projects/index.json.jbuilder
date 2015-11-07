json.array!(@projects) do |project|
  json.extract! project, :id, :Territory, :PODate, :Number, :Customer, :Type, :Name, :PM, :Owner
  json.url project_url(project, format: :json)
end
