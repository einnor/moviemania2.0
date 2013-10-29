class ComingsoonsController < ApplicationController

  before_action :load_cinema
	before_action :set_comingsoon, only: [:show, :edit, :update, :destroy]

  def index
  	@title = "Coming Soon"
  	@comingsoons = @cinema.comingsoons
  end

  def new
  	@title = "New Movie"
  	@comingsoon = @cinema.comingsoons.build
  end

  def show
  	@title = @comingsoon.title
  end

  def edit
  	@title = "Edit #{@comingsoon.title}"
  end

  def update
  	@title = "Update #{@comingsoon.title}"

  	if @comingsoon.update_attributes(comingsoon_params)
			redirect_to cinema_comingsoons_path, :notice => "The movie details have been successfully updated"
		else
			render "edit"
		end
  end

  def create
  	@comingsoon = @cinema.comingsoons.build(comingsoon_params)

  	if @comingsoon.save
			redirect_to cinema_comingsoons_path, :notice => "The movie was successfully saved"
		else
			render "new"
		end
  end

  def destroy
		@comingsoon.destroy
		redirect_to comingsoons_path, :notice => "The movie has been deleted."
  end

  private

  def load_cinema
  	@cinema = Cinema.find(params[:cinema_id])
  end

  def set_comingsoon
  	@comingsoon = @cinema.comingsoons.find(params[:id])
  end

  def comingsoon_params
		params.require(:comingsoon).permit(:title, :synopsis, :youtubestub, :category, :comingsooncover, :release_date)
  end
end
