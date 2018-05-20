json.extract! user, :id, :name, :email, :age, :address, :birthday, :flg_over_limit, :created_at, :updated_at
json.url user_url(user, format: :json)
