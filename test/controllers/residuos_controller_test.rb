require 'test_helper'

class ResiduosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @residuo = residuos(:one)
  end

  test "should get index" do
    get residuos_url, as: :json
    assert_response :success
  end

  test "should create residuo" do
    assert_difference('Residuo.count') do
      post residuos_url, params: { residuo: { descripcion: @residuo.descripcion, nombre: @residuo.nombre, tratamiento: @residuo.tratamiento } }, as: :json
    end

    assert_response 201
  end

  test "should show residuo" do
    get residuo_url(@residuo), as: :json
    assert_response :success
  end

  test "should update residuo" do
    patch residuo_url(@residuo), params: { residuo: { descripcion: @residuo.descripcion, nombre: @residuo.nombre, tratamiento: @residuo.tratamiento } }, as: :json
    assert_response 200
  end

  test "should destroy residuo" do
    assert_difference('Residuo.count', -1) do
      delete residuo_url(@residuo), as: :json
    end

    assert_response 204
  end
end
