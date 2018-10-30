require 'test_helper'

class ActaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actum = acta(:one)
  end

  test "should get index" do
    get acta_url
    assert_response :success
  end

  test "should get new" do
    get new_actum_url
    assert_response :success
  end

  test "should create actum" do
    assert_difference('Actum.count') do
      post acta_url, params: { actum: { description: @actum.description, fecha: @actum.fecha, signature_delivery: @actum.signature_delivery, signature_requests: @actum.signature_requests } }
    end

    assert_redirected_to actum_url(Actum.last)
  end

  test "should show actum" do
    get actum_url(@actum)
    assert_response :success
  end

  test "should get edit" do
    get edit_actum_url(@actum)
    assert_response :success
  end

  test "should update actum" do
    patch actum_url(@actum), params: { actum: { description: @actum.description, fecha: @actum.fecha, signature_delivery: @actum.signature_delivery, signature_requests: @actum.signature_requests } }
    assert_redirected_to actum_url(@actum)
  end

  test "should destroy actum" do
    assert_difference('Actum.count', -1) do
      delete actum_url(@actum)
    end

    assert_redirected_to acta_url
  end
end
