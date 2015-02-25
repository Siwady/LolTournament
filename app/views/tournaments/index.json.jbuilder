json.array!(@tournaments) do |tournament|
  json.extract! tournament, :id, :name, :country_id, :team_limits, :prize
  json.url tournament_url(tournament, format: :json)
end
