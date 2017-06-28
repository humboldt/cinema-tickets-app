json.extract! movie, :id, :name, :picture_url, :description, :created_at, :updated_at
json.url movie_url(movie, format: :json)
