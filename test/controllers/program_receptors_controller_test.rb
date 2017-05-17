require 'test_helper'

class ProgramReceptorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @program_receptor = program_receptors(:one)
  end

  test "should get index" do
    get program_receptors_url
    assert_response :success
  end

  test "should get new" do
    get new_program_receptor_url
    assert_response :success
  end

  test "should create program_receptor" do
    assert_difference('ProgramReceptor.count') do
      post program_receptors_url, params: { program_receptor: { person_id: @program_receptor.person_id, spr_person_id: @program_receptor.spr_person_id } }
    end

    assert_redirected_to program_receptor_url(ProgramReceptor.last)
  end

  test "should show program_receptor" do
    get program_receptor_url(@program_receptor)
    assert_response :success
  end

  test "should get edit" do
    get edit_program_receptor_url(@program_receptor)
    assert_response :success
  end

  test "should update program_receptor" do
    patch program_receptor_url(@program_receptor), params: { program_receptor: { person_id: @program_receptor.person_id, spr_person_id: @program_receptor.spr_person_id } }
    assert_redirected_to program_receptor_url(@program_receptor)
  end

  test "should destroy program_receptor" do
    assert_difference('ProgramReceptor.count', -1) do
      delete program_receptor_url(@program_receptor)
    end

    assert_redirected_to program_receptors_url
  end
end
