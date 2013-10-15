require 'test_helper'

class ForumcomingsoonsControllerTest < ActionController::TestCase
  setup do
    @forumcomingsoon = forumcomingsoons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forumcomingsoons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forumcomingsoon" do
    assert_difference('Forumcomingsoon.count') do
      post :create, forumcomingsoon: { body: @forumcomingsoon.body, comingsoon_id: @forumcomingsoon.comingsoon_id }
    end

    assert_redirected_to forumcomingsoon_path(assigns(:forumcomingsoon))
  end

  test "should show forumcomingsoon" do
    get :show, id: @forumcomingsoon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forumcomingsoon
    assert_response :success
  end

  test "should update forumcomingsoon" do
    patch :update, id: @forumcomingsoon, forumcomingsoon: { body: @forumcomingsoon.body, comingsoon_id: @forumcomingsoon.comingsoon_id }
    assert_redirected_to forumcomingsoon_path(assigns(:forumcomingsoon))
  end

  test "should destroy forumcomingsoon" do
    assert_difference('Forumcomingsoon.count', -1) do
      delete :destroy, id: @forumcomingsoon
    end

    assert_redirected_to forumcomingsoons_path
  end
end
