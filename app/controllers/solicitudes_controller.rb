class SolicitudesController < ApplicationController
  before_action :set_solicitud, only: [:show, :update, :destroy]

  # GET /solicitudes
  def index
    @solicitudes = Solicitud.all

    render json: @solicitudes
  end

  # GET /solicitudes/1
  def show
    render json: @solicitud
  end

  # POST /solicitudes
  def create
    @solicitud = Solicitud.new(solicitud_params)

    if @solicitud.save
      render json: @solicitud, status: :created, location: @solicitud
    else
      render json: @solicitud.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /solicitudes/1
  def update
    if @solicitud.update(solicitud_params)
      render json: @solicitud
    else
      render json: @solicitud.errors, status: :unprocessable_entity
    end
  end

  # DELETE /solicitudes/1
  def destroy
    @solicitud.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitud
      @solicitud = Solicitud.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def solicitud_params
      params.require(:solicitud).permit(:user_id, :oferta_id, :titulo, :descripcion, :tipo, :direccion, :estado)
    end
end
