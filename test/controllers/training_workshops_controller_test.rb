require 'test_helper'

class TrainingWorkshopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @training_workshop = training_workshops(:one)
  end

  test "should get index" do
    get training_workshops_url
    assert_response :success
  end

  test "should get new" do
    get new_training_workshop_url
    assert_response :success
  end

  test "should create training_workshop" do
    assert_difference('TrainingWorkshop.count') do
      post training_workshops_url, params: { training_workshop: { description: @training_workshop.description } }
    end

    assert_redirected_to training_workshop_url(TrainingWorkshop.last)
  end

  test "should show training_workshop" do
    get training_workshop_url(@training_workshop)
    assert_response :success
  end

  test "should get edit" do
    get edit_training_workshop_url(@training_workshop)
    assert_response :success
  end

  test "should update training_workshop" do
    patch training_workshop_url(@training_workshop), params: { training_workshop: { description: @training_workshop.description } }
    assert_redirected_to training_workshop_url(@training_workshop)
  end

  test "should destroy training_workshop" do
    assert_difference('TrainingWorkshop.count', -1) do
      delete training_workshop_url(@training_workshop)
    end

    assert_redirected_to training_workshops_url
  end
end
