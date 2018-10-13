class AlmacenesController < ApplicationController
  before_action :authenticate_user, only: [:show, :update]
  before_action :set_almacen, only: [:show, :update, :destroy]

  # GET /almacenes
  def index
    @almacenes = Almacen.all

    render json: @almacenes
  end

  # GET /almacenes/1
  def show
    render json: @almacen
  end

  # POST /almacenes
  def create
    @almacen = Almacen.new(almacen_params)

    if @almacen.save
      render json: @almacen, status: :created, location: @almacen
    else
      render json: @almacen.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /almacenes/1
  def update
    if @almacen.update(almacen_params)
      render json: @almacen
    else
      render json: @almacen.errors, status: :unprocessable_entity
    end
  end

  # DELETE /almacenes/1
  def destroy
    @almacen.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_almacen
      @almacen = Almacen.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def almacen_params
      params.require(:almacen).permit(:nombre, :nit, :user_id, :imagen, :tipo, :direccion)
    end
end
