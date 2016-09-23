json.extract! user, :id, :name, :bio, :score, :birth, :created_at, :updated_at
json.url user_url(user, format: :json)