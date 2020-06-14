json.extract! comments_reply, :id, :created_at, :updated_at
json.url comments_reply_url(comments_reply, format: :json)
