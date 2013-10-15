class ForumcomingsoonsController < ApplicationController
	before_action :load_cinema


  def create
  	@comingsoon = Comingsoon.find(params[:comingsoon_id])
  	@forumcomingsoon = @comingsoon.forumcomingsoons.build(forumcomingsoon_params)

  	if @forumcomingsoon.save
			redirect_to cinema_comingsoon_path(@cinema, @comingsoon), :notice => "The post was successfully saved."
		else
			render "new"
		end
  end


  private

  def load_cinema
  	@cinema = Cinema.find(params[:cinema_id])
  end

  def forumcomingsoon_params
  	params.require(:forumcomingsoon).permit(:body)
  end
end
