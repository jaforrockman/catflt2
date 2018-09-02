json.extract! child, :id, :person_id, :name, :dob, :created_at, :updated_at
json.url child_url(child, format: :json)
