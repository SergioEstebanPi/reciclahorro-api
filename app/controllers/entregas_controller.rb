class EntregasController < ApplicationController
  before_action :set_entrega, only: [:show, :update, :destroy]
  before_action :authenticate_user
  before_action :es_recolector
  before_action :es_propietario, except: [:index]

  # GET /entregas
  def index
    #@entregas = Entrega.all
    @entregas = Entrega.where(recolector: current_user)

    render json: @entregas
  end

  # GET /entregas/1
  def show
    render json: @entrega
  end

  # POST /entregas
  def create
    @entrega = Entrega.new(entrega_params)
    @entrega.vecino_id = current_user.id
    @entrega.recolector_id = params[:user][:id]
    @entrega.oferta = Oferta.find(params[:oferta][:id])
    @entrega.solicitud = Solicitud.find(params[:solicitud][:id])

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

    # se valida que el usuario actual sea recolector
    def es_recolector 
      if current_user.rol != 2
        render json: {entrega: ["Operación no permitida para este rol de usuario"]}, status:401        
      end
    end

    # se valida que el usuario sea propietario la entrega
    def es_propietario
      set_entrega
      if @entrega.recolector != current_user
        render json: {entrega: ["No permitido para este usuario"]}, status:401
      end
    end
end
