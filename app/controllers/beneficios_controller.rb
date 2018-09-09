class BeneficiosController < ApplicationController
  before_action :set_beneficio, only: [:show, :update, :destroy]

  # GET /beneficios
  def index
    @beneficios = Beneficio.all

    render json: @beneficios
  end

  # GET /beneficios/1
  def show
    render json: @beneficio
  end

  # POST /beneficios
  def create
    @beneficio = Beneficio.new(beneficio_params)

    if @beneficio.save
      render json: @beneficio, status: :created, location: @beneficio
    else
      render json: @beneficio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /beneficios/1
  def update
    if @beneficio.update(beneficio_params)
      render json: @beneficio
    else
      render json: @beneficio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /beneficios/1
  def destroy
    @beneficio.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beneficio
      @beneficio = Beneficio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def beneficio_params
      params.require(:beneficio).permit(:user_id, :entrega_id, :estado, :codigobarras)
    end
end
