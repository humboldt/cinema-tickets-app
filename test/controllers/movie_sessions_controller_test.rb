require 'test_helper'

class MovieSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_session = movie_sessions(:one)
  end

  test "should get index" do
    get movie_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_session_url
    assert_response :success
  end

  test "should create movie_session" do
    assert_difference('MovieSession.count') do
      post movie_sessions_url, params: { movie_session: { dates: @movie_session.dates, movie_id: @movie_session.movie_id } }
    end

    assert_redirected_to movie_session_url(MovieSession.last)
  end

  test "should show movie_session" do
    get movie_session_url(@movie_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_session_url(@movie_session)
    assert_response :success
  end

  test "should update movie_session" do
    patch movie_session_url(@movie_session), params: { movie_session: { dates: @movie_session.dates, movie_id: @movie_session.movie_id } }
    assert_redirected_to movie_session_url(@movie_session)
  end

  test "should destroy movie_session" do
    assert_difference('MovieSession.count', -1) do
      delete movie_session_url(@movie_session)
    end

    assert_redirected_to movie_sessions_url
  end
end
