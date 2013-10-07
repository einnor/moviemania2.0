class NowshowingsController < ApplicationController

  def index
  	@nowshowing = Nowshowing.all
  	@title = "Now Showing"
  end

  def new
  	@nowshowing = Nowshowing.new
  	@title = "New Now Showing"
  end

  def edit
  	@nowshowing = Nowshowing.find(params[:id])
  	@title = "Edit Now Showing"
  end

  def show
  	@nowshowing = Nowshowing.find(params[:id])
  	@title = @nowshing.title
  end

  def update
  	@title = "Update Now Showing"
  	@nowshowing = Nowshowing.find(params[:id])

  	if @nowshowing.update_attributes(params.require(:nowshowing).permit(:title, :synopsis, :youtubestub, :price, :category, :cinemashowing, :nowshowingcover))
			redirect_to nowshowings_path, :notice => "The movie details have been successfully updated"
		else
			render "edit"
		end
  end

  def create
  	@nowshowing = Nowshowing.new(params.require(:nowshowing).permit(:title, :synopsis, :youtubestub, :price, :category, :cinemashowing, :nowshowingcover))

  	if @nowshowing.save
			redirect_to nowshowing_index_path, :notice => "The movie was successfully saved."
		else
			render "new"
		end
  end

  def destroy
  	@nowshowing = Nowshowing.find(params[:id])
		@nowshing.destroy
		redirect_to nowshowing_index_path, :notice => "The movie has been successfully deleted."
  end

end
