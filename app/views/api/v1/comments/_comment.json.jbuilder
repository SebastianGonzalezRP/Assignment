json.extract! comment, :id, :text_comment, :created_at, :updated_at
json.url comment_url(comment, format: :json)