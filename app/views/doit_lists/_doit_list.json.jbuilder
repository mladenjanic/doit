json.extract! doit_list, :id, :title, :description, :created_at, :updated_at
json.url doit_list_url(doit_list, format: :json)
