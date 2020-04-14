require 'test_helper'

class VisitedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visited = visiteds(:one)
  end

  test "should get index" do
    get visiteds_url
    assert_response :success
  end

  test "should get new" do
    get new_visited_url
    assert_response :success
  end

  test "should create visited" do
    assert_difference('Visited.count') do
      post visiteds_url, params: { visited: { times: @visited.times } }
    end

    assert_redirected_to visited_url(Visited.last)
  end

  test "should show visited" do
    get visited_url(@visited)
    assert_response :success
  end

  test "should get edit" do
    get edit_visited_url(@visited)
    assert_response :success
  end

  test "should update visited" do
    patch visited_url(@visited), params: { visited: { times: @visited.times } }
    assert_redirected_to visited_url(@visited)
  end

  test "should destroy visited" do
    assert_difference('Visited.count', -1) do
      delete visited_url(@visited)
    end

    assert_redirected_to visiteds_url
  end
end
