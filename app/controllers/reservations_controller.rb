class ReservationsController < ApplicationController

  before_action :load_cinema
  before_action :load_nowshowing
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  def index
  	@reservations = @cinema.nowshowing.reservations
  	@title = "Reservations"
  end

  def new
  	@reservation = @nowshowing.reservations.build
  	@title = "New Reservation"
  end

  def show
  	@title = "Show Reservation"
  end

  def edit
  	@title = "Edit Reservation"
  end

  def update
  	@title = "Update Reservation"
  	if @reservation.update_attributes(params[:reservation])
			redirect_to @reservation, :notice => "The reservation details have been successfully updated"
		else
			render "edit"
		end
  end

  def create
  	@nowshowing = Nowshowing.find(params[:nowshowing_id])
  	@reservation = @nowshowing.reservations.build(reservation_params)
    @reservation.ip_address = request.remote_ip #yangu

    if @reservation.save
      #Make Credit card purchase.
      if @reservation.purchase
       	redirect_to cinema_nowshowing_path(@cinema, @nowshowing), :notice => 'You have successfully made a reservation.'
       else
          render "new", :notice => 'The reservation was not successful.'
       end

     else
       render "new"
     end
   end



  def destroy
  	@reservation.destroy
		redirect_to @reservation, :notice => "The reservation has been deleted."
  end

  private

  def set_reservation
  	@reservation = @nowshowing.reservations.find(params[:id])
  end

  def load_nowshowing
  	@nowshowing = Nowshowing.find(params[:nowshowing_id])
  end

  def load_cinema
  	@cinema = Cinema.find(params[:cinema_id])
  end

  def reservation_params
  	params.require(:reservation).permit(:fname, :sname, :email, :phone, :ip_address, :card_type, :card_number, :card_verification, :card_expires_on)
  end
end
