class EnquiriesController < ApplicationController

  before_action :set_enquiry, only: [:show, :edit, :update, :destroy]

  def index
  	@enquiries = Enquiry.all
  	@title = "Enquiries"
  end

  def new
  	@enquiry = Enquiry.new
  	@title = "New Enquiry"
  end

  def show
  	@title = "Show Enquiry"
  end

  def edit
  	@title = "Edit Enquiry"
  end

  def update
  	@title = "Update Enquiry"
  end

  def create
  	@enquiry = Enquiry.new(enquiry_params)

  	if @enquiry.save
  		EnquiryMailer.enquiry_mail(@enquiry).deliver
  		redirect_to root_path, :notice => "The enquiry was successfully sent."
  	else
  		render 'new'
  	end
  end

  def destroy
  	@enquiry.destroy
  	redirect_to enquiries_path, :notice => "The enquiry was successfully deleted."
  end

  private

  def set_enquiry
  	@enquiry = Enquiry.find(params[:id])
  end

  def enquiry_params
  	params.require(:enquiry).permit(:email, :head, :body)
  end
end
