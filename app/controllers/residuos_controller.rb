class ResiduosController < ApplicationController
  before_action :set_residuo, only: [:show, :update, :destroy]

  # GET /residuos
  def index
    @residuos = Residuo.all

    render json: @residuos
  end

  # GET /residuos/1
  def show
    render json: @residuo
  end

  # POST /residuos
  def create
    @residuo = Residuo.new(residuo_params)

    if @residuo.save
      render json: @residuo, status: :created, location: @residuo
    else
      render json: @residuo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /residuos/1
  def update
    if @residuo.update(residuo_params)
      render json: @residuo
    else
      render json: @residuo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /residuos/1
  def destroy
    @residuo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_residuo
      @residuo = Residuo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def residuo_params
      params.require(:residuo).permit(:nombre, :descripcion, :imagen, :tratamiento)
    end
end
