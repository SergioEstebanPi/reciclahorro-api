class OfertasController < ApplicationController
  before_action :set_oferta, only: [:show, :update, :destroy]
  before_action :authenticate_user, only: [:create, :update, :destroy]

  # GET /ofertas
  def index
    @ofertas = Oferta.all

    render json: @ofertas
  end

  # GET /ofertas/1
  def show
    render json: @oferta
  end

  # POST /ofertas
  def create
    if current_user.rol == 2
      @oferta = Oferta.new(oferta_params)
      @oferta.almacen = Almacen.find(params[:almacen][:id])
      @oferta.descuento = Descuento.find(params[:descuento][:id])
      @oferta.producto = Producto.find(params[:producto][:id])
      @oferta.residuo = Residuo.find(params[:residuo][:id])

      if @oferta.save
        render json: @oferta, status: :created, location: @oferta
      else
        render json: @oferta.errors, status: :unprocessable_entity
      end
    else
      render json: {producto: ["No permitido para este rol de usuario"]}, status:401
    end
  end

  # PATCH/PUT /ofertas/1
  def update
    if @oferta.update(oferta_params)
      render json: @oferta
    else
      render json: @oferta.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ofertas/1
  def destroy
    @oferta.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oferta
      @oferta = Oferta.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def oferta_params
      params.require(:oferta).permit(:almacen_id, :descuento_id, :residuo_id, :producto_id, :titulo, :descripcion, :imagen, :fecha_inicio, :fecha_fin, :estado)
    end
end
