
class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show edit update destroy ]

  # GET /bookings or /bookings.json
  def index
    @bookings = Booking.all
    @schedules = Schedule.all
    @users = User.all
    @rooms = Room.all
  end

  # GET /bookings/1 or /bookings/1.json
  def show
    @users = User.find(params[:id])
    @schedules = Schedule.find(params[:id])
    @bookings = Booking.find(params[:id])
    @rooms = @schedules.room_name
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
    #@schedules = Schedule.new
    #@user = User.new

  end

  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings or /bookings.json
  def create
    @booking = Booking.new(booking_params)
    #@booking = Booking.new(params[:schedule_id])
    respond_to do |format|
      if @booking.save
	book_schedule
        format.html { redirect_to @booking, notice: "Booking was successfully created." }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1 or /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: "Booking was successfully updated." }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1 or /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: "Booking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_params
      #params.require(:booking).permit(:status, :title, :user_id, :schedule_id, :start, :room_id)
      params.permit(:schedule_id)

    end

    def book_schedule
      #@user = User.find(params[:user][:booking][:user_id])
      @booking = Booking.new()
      #@booking.user_id = params[:user][:booking][:user_id]
      #@schedule = Schedule.find(params[:user][:booking][:schedule_id])
      #@booking.schedule_id = params[:user][:booking][:schedule_id]
      @booking.title = 'Book le'
      @booking.user_id = 'user1'
      @booking.schedule_id = params[:schedule_id]
      @booking.start = @schedule.start
      @booking.room_id = @room.room_id
      @booking.status = 'Booked'
      @booking.save
    end
end
