class RequestsController < ApplicationController
  skip_before_action :require_login

  def new
    @request = Request.new(params[:request])
  end

  def new
    @request = Request.new
    @slot = Slot.find(params[:slot_id])
  end 

  def create
    @request = Request.new(params[:request])
    @request.request = request

    respond_to do |f|
      if @request.deliver
        @request = Request.new
          
        f.html { render 'sessions/index' }
        f.js { flash.now[:success] = @message = "Thank you for your message, we'll get back to you within 1 business day" }   
      else
        f.html { render 'sessions/index' }
        f.js { flash.now[:error] = @message = "Cannot send message at this time." }
      end
  end

private

  def request_params
    params.require(:request).permit(:name, :email, :message, :nickname, :telephone, :type)
  end
     
end
