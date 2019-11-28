class Api::V1::UsersController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  before_action :set_user, only: [:show, :update, :destroy]
  def index
    @users = User.all
    # render json: @users #Just for testing
  end

  def show
  end

  def update
    if @user.update(user_params)
      render :show
    else
      render_errors
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render :show, status: :created
    else
      render_errors
    end
  end

  def destroy
    @user.destroy
    head :no_content
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def render_errors
    render json: { errors: @user.errors.full_messages }
  end

  def user_params
    params.require(:user).permit(:name, :location, :description, :phone_number, :open_id)
  end
end
