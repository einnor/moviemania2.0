class CinemasController < ApplicationController

  before_action :set_cinema, only: [:show, :edit, :update, :destroy]

  def index
		@cinemas = Cinema.all
		@title = "Cinemas"
  end

  def new
  	@cinema = Cinema.new
  	@title = "New Cinema"
  end

  def edit
  	@title = "Edit #{@cinema.name}"
  end

  def show
		@title = @cinema.name
  end

  def update
  	@title = "Update #{@cinema.name}"

		if @cinema.update_attributes(cinema_params)
			redirect_to cinemas_path, :notice => "The cinema details have been successfully updated"
		else
			render "edit"
		end
  end

  def create
  	@cinema = Cinema.new(cinema_params)

  	if @cinema.save
			redirect_to cinemas_path, :notice => "The cinema was successfully saved"
		else
			render "new"
		end

  end

  def destroy
		@cinema.destroy
		redirect_to cinemas_path, :notice => "The cinema has been deleted."
  end

  private

  def set_cinema
  	@cinema = Cinema.find(params[:id])
  end

  def cinema_params
  	params.require(:cinema).permit(:name, :email, :description, :cinemalogo)
  end

end
