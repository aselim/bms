json.array!(@milestones) do |milestone|
  json.extract! milestone, :id, :name, :exp_date, :act_date, :resources, :project_id
  json.url milestone_url(milestone, format: :json)
end
