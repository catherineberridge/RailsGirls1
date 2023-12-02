json.extract! emessage, :id, :from_email, :to_email, :message, :ecard_id, :created_at, :updated_at
json.url emessage_url(emessage, format: :json)
