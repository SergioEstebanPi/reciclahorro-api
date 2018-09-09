require 'test_helper'

class DescuentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @descuento = descuentos(:one)
  end

  test "should get index" do
    get descuentos_url, as: :json
    assert_response :success
  end

  test "should create descuento" do
    assert_difference('Descuento.count') do
      post descuentos_url, params: { descuento: { almacen_id: @descuento.almacen_id, descripcion: @descuento.descripcion, porcentaje: @descuento.porcentaje, titulo: @descuento.titulo } }, as: :json
    end

    assert_response 201
  end

  test "should show descuento" do
    get descuento_url(@descuento), as: :json
    assert_response :success
  end

  test "should update descuento" do
    patch descuento_url(@descuento), params: { descuento: { almacen_id: @descuento.almacen_id, descripcion: @descuento.descripcion, porcentaje: @descuento.porcentaje, titulo: @descuento.titulo } }, as: :json
    assert_response 200
  end

  test "should destroy descuento" do
    assert_difference('Descuento.count', -1) do
      delete descuento_url(@descuento), as: :json
    end

    assert_response 204
  end
end
