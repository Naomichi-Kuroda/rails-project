json.extract! user_comment, :id, :character_id, :name, :body, :deleted, :created_at, :updated_at
json.url user_comment_url(user_comment, format: :json)
