json.extract! room, :id, :room_id, :room_name, :room_fac_type, :created_at, :updated_at
json.url room_url(room, format: :json)
