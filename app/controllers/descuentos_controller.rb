class DescuentosController < ApplicationController
  before_action :set_descuento, only: [:show, :update, :destroy]
  before_action :authenticate_user, only: [:create, :update, :destroy]

  # GET /descuentos
  def index
    @descuentos = Descuento.all

    render json: @descuentos
  end

  # GET /descuentos/1
  def show
    render json: @descuento
  end

  # POST /descuentos
  def create
    if current_user.rol == 2
      @descuento = Descuento.new(descuento_params)
      @descuento.almacen = Almacen.find(params[:almacen][:id])
      
      if @descuento.save
        render json: @descuento, status: :created, location: @descuento
      else
        render json: @descuento.errors, status: :unprocessable_entity
      end
    else
      render json: {producto: ["No permitido para este rol de usuario"]}, status:401
    end
  end

  # PATCH/PUT /descuentos/1
  def update
    if @descuento.update(descuento_params)
      render json: @descuento
    else
      render json: @descuento.errors, status: :unprocessable_entity
    end
  end

  # DELETE /descuentos/1
  def destroy
    @descuento.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_descuento
      @descuento = Descuento.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def descuento_params
      params.require(:descuento).permit(:titulo, :descripcion, :porcentaje, :almacen_id)
    end
end
