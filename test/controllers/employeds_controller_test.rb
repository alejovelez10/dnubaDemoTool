require 'test_helper'

class EmployedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employed = employeds(:one)
  end

  test "should get index" do
    get employeds_url
    assert_response :success
  end

  test "should get new" do
    get new_employed_url
    assert_response :success
  end

  test "should create employed" do
    assert_difference('Employed.count') do
      post employeds_url, params: { employed: { actum_id: @employed.actum_id, cargo: @employed.cargo, cedula: @employed.cedula, name: @employed.name } }
    end

    assert_redirected_to employed_url(Employed.last)
  end

  test "should show employed" do
    get employed_url(@employed)
    assert_response :success
  end

  test "should get edit" do
    get edit_employed_url(@employed)
    assert_response :success
  end

  test "should update employed" do
    patch employed_url(@employed), params: { employed: { actum_id: @employed.actum_id, cargo: @employed.cargo, cedula: @employed.cedula, name: @employed.name } }
    assert_redirected_to employed_url(@employed)
  end

  test "should destroy employed" do
    assert_difference('Employed.count', -1) do
      delete employed_url(@employed)
    end

    assert_redirected_to employeds_url
  end
end
