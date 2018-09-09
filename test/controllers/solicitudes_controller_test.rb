require 'test_helper'

class SolicitudesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitud = solicitudes(:one)
  end

  test "should get index" do
    get solicitudes_url, as: :json
    assert_response :success
  end

  test "should create solicitud" do
    assert_difference('Solicitud.count') do
      post solicitudes_url, params: { solicitud: { descripcion: @solicitud.descripcion, direccion: @solicitud.direccion, estado: @solicitud.estado, oferta_id: @solicitud.oferta_id, tipo: @solicitud.tipo, titulo: @solicitud.titulo, user_id: @solicitud.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show solicitud" do
    get solicitud_url(@solicitud), as: :json
    assert_response :success
  end

  test "should update solicitud" do
    patch solicitud_url(@solicitud), params: { solicitud: { descripcion: @solicitud.descripcion, direccion: @solicitud.direccion, estado: @solicitud.estado, oferta_id: @solicitud.oferta_id, tipo: @solicitud.tipo, titulo: @solicitud.titulo, user_id: @solicitud.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy solicitud" do
    assert_difference('Solicitud.count', -1) do
      delete solicitud_url(@solicitud), as: :json
    end

    assert_response 204
  end
end
