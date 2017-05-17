require 'test_helper'

class RegistriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registry = registries(:one)
  end

  test "should get index" do
    get registries_url
    assert_response :success
  end

  test "should get new" do
    get new_registry_url
    assert_response :success
  end

  test "should create registry" do
    assert_difference('Registry.count') do
      post registries_url, params: { registry: { charge_id: @registry.charge_id, group_id: @registry.group_id, person_id: @registry.person_id, program_receptor_id: @registry.program_receptor_id, registry_date: @registry.registry_date, unity_id: @registry.unity_id } }
    end

    assert_redirected_to registry_url(Registry.last)
  end

  test "should show registry" do
    get registry_url(@registry)
    assert_response :success
  end

  test "should get edit" do
    get edit_registry_url(@registry)
    assert_response :success
  end

  test "should update registry" do
    patch registry_url(@registry), params: { registry: { charge_id: @registry.charge_id, group_id: @registry.group_id, person_id: @registry.person_id, program_receptor_id: @registry.program_receptor_id, registry_date: @registry.registry_date, unity_id: @registry.unity_id } }
    assert_redirected_to registry_url(@registry)
  end

  test "should destroy registry" do
    assert_difference('Registry.count', -1) do
      delete registry_url(@registry)
    end

    assert_redirected_to registries_url
  end
end
