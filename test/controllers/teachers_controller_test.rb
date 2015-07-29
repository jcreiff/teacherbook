require 'test_helper'

class TeachersControllerTest < ActionController::TestCase
  setup do
    @jim = teachers(:one)
    @sarah = teachers(:two)
    session[:teacher_id] = @jim.id
  end

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jim
    assert_response :success
  end

  test "should get update" do
    patch :update, id: @jim, teacher: {name: "Jimmy"}
    assert_redirected_to @jim
  end

end
