json.array!(@comments) do |comment|
  json.extract! comment, :id, :user_id, :content, :reference_id
  json.url comment_url(comment, format: :json)
end
