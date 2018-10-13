class ProductosController < ApplicationController
  before_action :set_producto, only: [:show, :update, :destroy]
  before_action :authenticate_user, only: [:create, :update, :destroy]

  # GET /productos
  def index
    @productos = Producto.all

    render json: @productos
  end

  # GET /productos/1
  def show
    render json: @producto
  end

  # POST /productos
  def create
    if current_user.rol == 2
      @producto = Producto.new(producto_params)
      if @producto.save
        render json: @producto, status: :created, location: @producto
      else
        render json: @producto.errors, status: :unprocessable_entity
      end
    else
      render json: {producto: ["No permitido para este rol de usuario"]}, status:401
    end
  end

  # PATCH/PUT /productos/1
  def update
    if @producto.update(producto_params)
      render json: @producto
    else
      render json: @producto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /productos/1
  def destroy
    @producto.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto
      @producto = Producto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def producto_params
      params.require(:producto).permit(:nombre, :descripcion, :imagen)
    end
end
