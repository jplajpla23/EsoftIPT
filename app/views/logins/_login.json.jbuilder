json.extract! login, :id, :nome, :password, :created_at, :updated_at
json.url login_url(login, format: :json)
