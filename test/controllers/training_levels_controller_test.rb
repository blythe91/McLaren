require 'test_helper'

class TrainingLevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @training_level = training_levels(:one)
  end

  test "should get index" do
    get training_levels_url
    assert_response :success
  end

  test "should get new" do
    get new_training_level_url
    assert_response :success
  end

  test "should create training_level" do
    assert_difference('TrainingLevel.count') do
      post training_levels_url, params: { training_level: { description: @training_level.description } }
    end

    assert_redirected_to training_level_url(TrainingLevel.last)
  end

  test "should show training_level" do
    get training_level_url(@training_level)
    assert_response :success
  end

  test "should get edit" do
    get edit_training_level_url(@training_level)
    assert_response :success
  end

  test "should update training_level" do
    patch training_level_url(@training_level), params: { training_level: { description: @training_level.description } }
    assert_redirected_to training_level_url(@training_level)
  end

  test "should destroy training_level" do
    assert_difference('TrainingLevel.count', -1) do
      delete training_level_url(@training_level)
    end

    assert_redirected_to training_levels_url
  end
end
