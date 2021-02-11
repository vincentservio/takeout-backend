require 'test_helper'

class TakeoutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @takeout = takeouts(:one)
  end

  test "should get index" do
    get takeouts_url, as: :json
    assert_response :success
  end

  test "should create takeout" do
    assert_difference('Takeout.count') do
      post takeouts_url, params: { takeout: { best_order: @takeout.best_order, comment: @takeout.comment, name: @takeout.name, score: @takeout.score } }, as: :json
    end

    assert_response 201
  end

  test "should show takeout" do
    get takeout_url(@takeout), as: :json
    assert_response :success
  end

  test "should update takeout" do
    patch takeout_url(@takeout), params: { takeout: { best_order: @takeout.best_order, comment: @takeout.comment, name: @takeout.name, score: @takeout.score } }, as: :json
    assert_response 200
  end

  test "should destroy takeout" do
    assert_difference('Takeout.count', -1) do
      delete takeout_url(@takeout), as: :json
    end

    assert_response 204
  end
end
