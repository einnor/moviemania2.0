json.array!(@comments) do |comment|
  json.extract! comment, :nowshowing_id, :body
  json.url comment_url(comment, format: :json)
end
