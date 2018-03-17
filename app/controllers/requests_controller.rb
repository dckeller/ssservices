class RequestsController < ApplicationController
  skip_before_action :require_login

  def new
    @request = Request.new(params[:request])
  end

  def create
    @request = Request.new(params[:request])
    @request.request = request

    if @request.deliver
        
      redirect_to root_path
      flash.now[:success] = @message = "Thank you for your message, we'll get back to you within 1 business day."   
    else
      render 'new'
      flash.now[:error] = @message = "Sorry, your message was unable to send at this time." 
    end
  end

private

  def request_params
    params.require(:request).permit(:name, :email, :message, :nickname, :telephone, :type)
  end
     
end
