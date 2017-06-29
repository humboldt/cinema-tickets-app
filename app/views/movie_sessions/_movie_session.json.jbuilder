json.extract! movie_session, :id, :dates, :movie_id, :created_at, :updated_at
json.url movie_session_url(movie_session, format: :json)
