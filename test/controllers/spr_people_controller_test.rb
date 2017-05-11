require 'test_helper'

class SprPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spr_person = spr_people(:one)
  end

  test "should get index" do
    get spr_people_url
    assert_response :success
  end

  test "should get new" do
    get new_spr_person_url
    assert_response :success
  end

  test "should create spr_person" do
    assert_difference('SprPerson.count') do
      post spr_people_url, params: { spr_person: { Document_type_id: @spr_person.Document_type_id, academic_level_id: @spr_person.academic_level_id, address: @spr_person.address, asv_member: @spr_person.asv_member, document: @spr_person.document, first_last_name: @spr_person.first_last_name, first_name: @spr_person.first_name, gender: @spr_person.gender, main_email: @spr_person.main_email, mobile_phone: @spr_person.mobile_phone, nationality_id: @spr_person.nationality_id, ocupation_id: @spr_person.ocupation_id, phone: @spr_person.phone, relationship_id: @spr_person.relationship_id, representative: @spr_person.representative, second_email: @spr_person.second_email, second_last_name: @spr_person.second_last_name, second_name: @spr_person.second_name } }
    end

    assert_redirected_to spr_person_url(SprPerson.last)
  end

  test "should show spr_person" do
    get spr_person_url(@spr_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_spr_person_url(@spr_person)
    assert_response :success
  end

  test "should update spr_person" do
    patch spr_person_url(@spr_person), params: { spr_person: { Document_type_id: @spr_person.Document_type_id, academic_level_id: @spr_person.academic_level_id, address: @spr_person.address, asv_member: @spr_person.asv_member, document: @spr_person.document, first_last_name: @spr_person.first_last_name, first_name: @spr_person.first_name, gender: @spr_person.gender, main_email: @spr_person.main_email, mobile_phone: @spr_person.mobile_phone, nationality_id: @spr_person.nationality_id, ocupation_id: @spr_person.ocupation_id, phone: @spr_person.phone, relationship_id: @spr_person.relationship_id, representative: @spr_person.representative, second_email: @spr_person.second_email, second_last_name: @spr_person.second_last_name, second_name: @spr_person.second_name } }
    assert_redirected_to spr_person_url(@spr_person)
  end

  test "should destroy spr_person" do
    assert_difference('SprPerson.count', -1) do
      delete spr_person_url(@spr_person)
    end

    assert_redirected_to spr_people_url
  end
end
