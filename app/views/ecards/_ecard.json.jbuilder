json.extract! ecard, :id, :name, :description, :picture, :created_at, :updated_at
json.url ecard_url(ecard, format: :json)
