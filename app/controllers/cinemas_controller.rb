class CinemasController < ApplicationController
  def index
		@cinemas = Cinema.all
		@title = "Cinemas"
  end

  def new
  	@cinema = Cinema.new
  	@title = "New Cinema"
  end

  def edit
  	@cinema = Cinema.find(params[:id])
  	@title = "Edit Cinema"
  end

  def show
		@cinema = Cinema.find(params[:id])
		@title = @cinema.name
  end

  def update
  	@cinema = Cinema.find(params[:id])
  	@title = "Update Cinema"

		if @cinema.update_attributes(params.require(:cinema).permit(:name, :email, :description, :cinemalogo))
			redirect_to cinemas_path, :notice => "The cinema details have been successfully updated"
		else
			render "edit"
		end
  end

  def create
  	@cinema = Cinema.new(params.require(:cinema).permit(:name, :email, :description, :cinemalogo))

  	if @cinema.save
			redirect_to cinemas_path, :notice => "The cinema was successfully saved"
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
