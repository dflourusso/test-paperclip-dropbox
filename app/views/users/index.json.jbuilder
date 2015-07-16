json.array!(@users) do |user|
  json.extract! user, :id, :nome, :avatar
  json.url user_url(user, format: :json)
end
