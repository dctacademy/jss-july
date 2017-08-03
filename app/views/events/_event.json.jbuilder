json.extract! event, :id, :name, :description, :entry_fee, :start_datetime, :end_datetime, :no_participants, :location, :fest_id, :created_at, :updated_at
json.url event_url(event, format: :json)
