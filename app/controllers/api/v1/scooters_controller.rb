class Api::V1::ScootersController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  before_action :set_scooter, only: [:show, :update, :destroy]
  # after_action :set_scooter, only: [:create]

  def index
    @scooters = Scooter.order(created_at: :desc)
  end

  def update
    if @scooter.update(scooter_params)
      render :show
    else
      render_errors
    end
  end

  def create
    @scooter = Scooter.new(scooter_params)
    if @scooter.save
      p @scooter
      render :show, status: :created
    else
      render_errors
    end
  end

  def show
    # @scooter = Scooter.find(params[:id])
  end

  def destroy
    @scooter.destroy
    head :no_content
  end

  private

  def set_scooter
    @scooter = Scooter.find(params[:id])
    @user = @scooter.user
  end

  def render_errors
    render json: { errors: @scooter.errors.full_messages }
  end

  def scooter_params
    params.require(:scooter).permit(:model, :top_speed, :price, :availability, :location, :battery, :year, :user_id, :latitude, :longitude, :picture)
  end
end
