class CommentsController < ApplicationController

	before_action :load_cinema


  def create
  	@nowshowing = Nowshowing.find(params[:nowshowing_id])
  	@comment = @nowshowing.comments.build(comment_params)

  	if @comment.save
			redirect_to cinema_nowshowing_path(@cinema, @nowshowing), :notice => "The post was successfully saved."
		else
			render "new"
		end
  end


  private

  def load_cinema
  	@cinema = Cinema.find(params[:cinema_id])
  end

  def comment_params
  	params.require(:comment).permit(:body)
  end
end
