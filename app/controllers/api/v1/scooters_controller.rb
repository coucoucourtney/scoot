class Api::V1::ScootersController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update]
  before_action :set_scooter, only: [:show, :update]

  def index
    @stories = Scooter.order(created_at: :desc)
  end

  def show
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
      render :show, status: :created
    else
      render_errors
    end
  end

  def destroy
    @scooter.destroy
    head :no_content
  end

  private

  def set_scooter
    @scooter = Scooter.find(params[:id])
  end

  def render_errors
    render json: { errors: @scooter.errors.full_messages }
  end

  def scooter_params
    params.require(:scooter).permit(:model, :top_speed, :price, :availability, :location, :battery, :year, :user_id)
  end
end
end
