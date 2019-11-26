class Api::V1::Bookings_Controller < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  before_action :set_bookings, only: [:show, :update, :destroy]

  def index
    @bookings = Booking.order(created_at: :desc)
  end

  def show
  end

  def update
    if @bookings.update(bookings_params)
      render :show
    else
      render_errors
    end
  end

  def create
    @bookings = Booking.new(bookings_params)
    if @bookings.save
      render :show, status: :created
    else
      render_errors
    end
  end

  def destroy
    @bookings.destroy
    head :no_content
  end

  private

  def set_bookings
    @bookings = bookings.find(params[:id])
  end

  def render_errors
    render json: { errors: @bookings.errors.full_messages }
  end

  def bookings_params
    params.require(:bookings).permit(:booking_time, :user_id, :scooter_id)
  end
end
