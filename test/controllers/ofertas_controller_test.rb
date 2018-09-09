require 'test_helper'

class OfertasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oferta = ofertas(:one)
  end

  test "should get index" do
    get ofertas_url, as: :json
    assert_response :success
  end

  test "should create oferta" do
    assert_difference('Oferta.count') do
      post ofertas_url, params: { oferta: { almacen_id: @oferta.almacen_id, descuento_id: @oferta.descuento_id, estado: @oferta.estado, fecha_fin: @oferta.fecha_fin, fecha_inicio: @oferta.fecha_inicio, producto_id: @oferta.producto_id, residuo_id: @oferta.residuo_id } }, as: :json
    end

    assert_response 201
  end

  test "should show oferta" do
    get oferta_url(@oferta), as: :json
    assert_response :success
  end

  test "should update oferta" do
    patch oferta_url(@oferta), params: { oferta: { almacen_id: @oferta.almacen_id, descuento_id: @oferta.descuento_id, estado: @oferta.estado, fecha_fin: @oferta.fecha_fin, fecha_inicio: @oferta.fecha_inicio, producto_id: @oferta.producto_id, residuo_id: @oferta.residuo_id } }, as: :json
    assert_response 200
  end

  test "should destroy oferta" do
    assert_difference('Oferta.count', -1) do
      delete oferta_url(@oferta), as: :json
    end

    assert_response 204
  end
end
