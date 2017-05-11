require 'test_helper'

class StructureLevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @structure_level = structure_levels(:one)
  end

  test "should get index" do
    get structure_levels_url
    assert_response :success
  end

  test "should get new" do
    get new_structure_level_url
    assert_response :success
  end

  test "should create structure_level" do
    assert_difference('StructureLevel.count') do
      post structure_levels_url, params: { structure_level: { description: @structure_level.description } }
    end

    assert_redirected_to structure_level_url(StructureLevel.last)
  end

  test "should show structure_level" do
    get structure_level_url(@structure_level)
    assert_response :success
  end

  test "should get edit" do
    get edit_structure_level_url(@structure_level)
    assert_response :success
  end

  test "should update structure_level" do
    patch structure_level_url(@structure_level), params: { structure_level: { description: @structure_level.description } }
    assert_redirected_to structure_level_url(@structure_level)
  end

  test "should destroy structure_level" do
    assert_difference('StructureLevel.count', -1) do
      delete structure_level_url(@structure_level)
    end

    assert_redirected_to structure_levels_url
  end
end
