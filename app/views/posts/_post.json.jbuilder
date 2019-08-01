json.extract! post, :id, :title, :url, :pic, :intro, :guide, :created_at, :updated_at
json.url post_url(post, format: :json)
