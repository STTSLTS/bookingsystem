json.extract! booking, :id, :status, :title, :user_id, :schedule_id, :start, :room_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
