require 'test_helper'

class EntregasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entrega = entregas(:one)
  end

  test "should get index" do
    get entregas_url, as: :json
    assert_response :success
  end

  test "should create entrega" do
    assert_difference('Entrega.count') do
      post entregas_url, params: { entrega: { estadoresiduo: @entrega.estadoresiduo, oferta_id: @entrega.oferta_id, peso: @entrega.peso, solicitud_id: @entrega.solicitud_id, user_id: @entrega.user_id, user_id: @entrega.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show entrega" do
    get entrega_url(@entrega), as: :json
    assert_response :success
  end

  test "should update entrega" do
    patch entrega_url(@entrega), params: { entrega: { estadoresiduo: @entrega.estadoresiduo, oferta_id: @entrega.oferta_id, peso: @entrega.peso, solicitud_id: @entrega.solicitud_id, user_id: @entrega.user_id, user_id: @entrega.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy entrega" do
    assert_difference('Entrega.count', -1) do
      delete entrega_url(@entrega), as: :json
    end

    assert_response 204
  end
end
