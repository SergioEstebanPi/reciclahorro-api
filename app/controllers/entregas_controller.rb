class EntregasController < ApplicationController
  before_action :set_entrega, only: [:show, :update, :destroy]

  # GET /entregas
  def index
    @entregas = Entrega.all

    render json: @entregas
  end

  # GET /entregas/1
  def show
    render json: @entrega
  end

  # POST /entregas
  def create
    @entrega = Entrega.new(entrega_params)

    if @entrega.save
      render json: @entrega, status: :created, location: @entrega
    else
      render json: @entrega.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /entregas/1
  def update
    if @entrega.update(entrega_params)
      render json: @entrega
    else
      render json: @entrega.errors, status: :unprocessable_entity
    end
  end

  # DELETE /entregas/1
  def destroy
    @entrega.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entrega
      @entrega = Entrega.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def entrega_params
      params.require(:entrega).permit(:user_id, :solicitud_id, :user_id, :peso, :estadoresiduo, :oferta_id)
    end
end
