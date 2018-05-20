json.extract! item_comment, :id, :item_id, :user_id, :status, :body, :created_at, :updated_at
json.url item_comment_url(item_comment, format: :json)
