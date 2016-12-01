json.extract! item, :id, :tite, :description, :seller, :status, :created_at, :updated_at
json.url item_url(item, format: :json)