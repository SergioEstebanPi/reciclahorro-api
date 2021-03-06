class UsersController < ApplicationController
  # solicitamos autenticación a la accion show
  before_action :authenticate_user, only: [:index, :show, :update, :destroy]
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users/current
  def current
    render json: current_user
  end

  # GET /logout
  def logout
    current_user = nil
    reset_session
  end

  # GET /users
  def index
    if current.rol
      @users = User.all
      render json: @users
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)
    @user.foto = "default/avatar.png";

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    # pasword_digest => password, password_confirmation
    def user_params
      #params.require(:user).permit(:name, :email, :password_digest)
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :documento, :foto, :rol, :direccion, :fecha_nacimiento)
    end
end
