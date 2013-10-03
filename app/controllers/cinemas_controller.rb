class CinemasController < ApplicationController
  def index
		@cinemas = Cinema.all
  end

  def new
  	@cinema = Cinema.new
  end

  def edit
  	@cinema = Cinema.find(params[:id])
  end

  def show
		@cinema = Cinema.find(params[:id])
  end

  def update
  	@cinema = Cinema.find(params[:id])

		if @cinema.update_attributes(params.require(:cinema).permit(:name, :email, :description, :cinemalogo))
			redirect_to cinemas_path, :notice => "The cinema details have been successfully updated"
		else
			render "edit"
		end
  end

  def create
  	@cinema = Cinema.new(params.require(:cinema).permit(:name, :email, :description, :cinemalogo))

  	if @cinema.save
			redirect_to root_path, :notice => "The cinema was successfully saved"
		else
			render "new"
		end

  end

  def destroy
  	@cinema = Cinema.find(params[:id])
		@cinema.destroy
		redirect_to cinemas_path, :notice => "Your post has been deleted."
  end
end
