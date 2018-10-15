class ProductosController < ApplicationController
  before_action :set_logic
  before_action :set_producto, only: [:show, :update, :destroy]
  before_action :authenticate_user
  before_action :es_permitido  
  
  # def my_url
  #   Rails.application.routes.url_helpers.rails_info_path(@producto.avatar, disposition: "attachment")
  # end

  # GET /productos
  def index
    @productos = Producto.all
    #@productos.with_attached_images

    render json: @productos
  end

  # GET /productos/1
  def show
    # sputs '=------------------------------'
    #puts my_url
    render json: @producto
  end

  # POST /productos
  def create
    #if @permitido
      @producto = Producto.new(new_producto_params)
      guardar_imagen(@producto.nombre)
      puts 'Producto'
      puts @producto
      if @producto.save
        render json: @producto, status: :created, location: @producto
      else
        render json: @producto.errors, status: :unprocessable_entity
      end
    #else
    #  render json: {producto: ["No permitido para este rol de usuario"]}, status:401
    #end
  end

  # PATCH/PUT /productos/1
  def update
    guardar_imagen(producto_params[:nombre])
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

    def new_producto_params
      params.require(:producto).permit(:nombre, :descripcion, :imagen, :dataimagen)
    end

    # Only allow a trusted parameter "white list" through.
    def producto_params
      params.require(:producto).permit(:nombre, :descripcion, :dataimagen)
    end
    def set_logic
      @ADMINISTRADOR ||= Business::Logic::ADMINISTRADOR
      @VECINO ||= Business::Logic::VECINO
      @ALMACEN ||= Business::Logic::ALMACEN
      @RECOLECTOR ||= Business::Logic::RECOLECTOR
    end
    def es_permitido
      if !(current_user.rol != nil && 
                  (current_user.rol.to_i == @ALMACEN || 
                    current_user.rol.to_i == @ADMINISTRADOR))
        render json: {producto: ["No permitido para este rol de usuario"]}, status:401
      end
    end
    def guardar_imagen(nombre)
      @dataimagen = params[:dataimagen]
      if @dataimagen
        @subcarpetaimagen = current_user.email + '/productos/' + nombre + '/'
        @carpetaimagen = 'public/' + @subcarpetaimagen
        @rutaimagen = @subcarpetaimagen + params[:imagen]
        FileUtils.mkdir_p(@carpetaimagen) unless File.exist?(@carpetaimagen) 
        File.open(@carpetaimagen + params[:imagen],'wb') do |file|
          file.write(Base64.decode64(@dataimagen))
          @producto.imagen = @rutaimagen
          puts 'ruta imagen'
          puts @producto.imagen
        end
      end
    end
end
