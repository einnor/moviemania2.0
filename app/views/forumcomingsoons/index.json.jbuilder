json.array!(@forumcomingsoons) do |forumcomingsoon|
  json.extract! forumcomingsoon, :comingsoon_id, :body
  json.url forumcomingsoon_url(forumcomingsoon, format: :json)
end
