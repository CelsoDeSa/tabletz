json.extract! review, :id, :title, :url, :video, :pic, :rating, :pros, :cons, :summary, :description, :os, :camera, :storage, :display, :resolution, :battery, :ram, :weight, :created_at, :updated_at
json.url review_url(review, format: :json)
