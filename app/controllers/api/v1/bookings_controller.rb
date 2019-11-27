class Api::V1::BookingsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  before_action :set_bookings, only: [:show, :update, :destroy]

  def index
    @bookings = Booking.order(created_at: :desc)
  end

  def show
  end

  def update
    if @booking.update(bookings_params)
      render :show
    else
      render_errors
    end
  end

  def create
    @booking = Booking.new(bookings_params)
    if @booking.save
      render :show, status: :created
    else
      render_errors
    end
  end

  def destroy
    @booking.destroy
    head :no_content
  end

  private

  def set_bookings
    @booking = Booking.find(params[:id])
  end

  def render_errors
    render json: { errors: @booking.errors.full_messages }
  end

  def bookings_params
    params.require(:booking).permit(:confirmation, :user_id, :scooter_id)
  end
end
