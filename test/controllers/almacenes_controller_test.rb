require 'test_helper'

class AlmacenesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @almacen = almacenes(:one)
  end

  test "should get index" do
    get almacenes_url, as: :json
    assert_response :success
  end

  test "should create almacen" do
    assert_difference('Almacen.count') do
      post almacenes_url, params: { almacen: { direccion: @almacen.direccion, nit: @almacen.nit, nombre: @almacen.nombre, tipo: @almacen.tipo, user_id: @almacen.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show almacen" do
    get almacen_url(@almacen), as: :json
    assert_response :success
  end

  test "should update almacen" do
    patch almacen_url(@almacen), params: { almacen: { direccion: @almacen.direccion, nit: @almacen.nit, nombre: @almacen.nombre, tipo: @almacen.tipo, user_id: @almacen.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy almacen" do
    assert_difference('Almacen.count', -1) do
      delete almacen_url(@almacen), as: :json
    end

    assert_response 204
  end
end
