require 'test_helper'

class BeneficiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beneficio = beneficios(:one)
  end

  test "should get index" do
    get beneficios_url, as: :json
    assert_response :success
  end

  test "should create beneficio" do
    assert_difference('Beneficio.count') do
      post beneficios_url, params: { beneficio: { codigobarras: @beneficio.codigobarras, entrega_id: @beneficio.entrega_id, estado: @beneficio.estado, user_id: @beneficio.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show beneficio" do
    get beneficio_url(@beneficio), as: :json
    assert_response :success
  end

  test "should update beneficio" do
    patch beneficio_url(@beneficio), params: { beneficio: { codigobarras: @beneficio.codigobarras, entrega_id: @beneficio.entrega_id, estado: @beneficio.estado, user_id: @beneficio.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy beneficio" do
    assert_difference('Beneficio.count', -1) do
      delete beneficio_url(@beneficio), as: :json
    end

    assert_response 204
  end
end
