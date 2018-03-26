class RequestsController < ApplicationController
  skip_before_action :require_login

  def new
    @request = Request.new(params[:request])
  end

  def create
    @request = Request.new(params[:request])
    @request.request = request

    if @request.deliver
        
      redirect_to root_path(:anchor => "sessions-time-slots")
      flash[:success] = @message = "Thank you for your message, we'll get back to you as soon as we can."   
    else
      render 'new'
      flash[:error] = @message = "Sorry, your message was unable to send at this time." 
    end
  end

private

  def request_params
    params.require(:request).permit(:name, :email, :message, :nickname, :telephone, :type)
  end
     
end
