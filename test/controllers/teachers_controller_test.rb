require 'test_helper'

class TeachersControllerTest < ActionController::TestCase
  setup do
    @jim = teachers(:one)
    @sarah = teachers(:two)
  end

  test "should get home" do
    get :home, login(@jim)
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

end
