json.extract! schedule, :id, :schedule_id, :schedule_title, :start, :end, :facility_type, :room_name, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
