json.array!(@contents) do |content|
  json.extract! content, :id, :course_id, :html
  json.url content_url(content, format: :json)
end
