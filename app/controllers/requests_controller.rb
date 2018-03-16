class RequestsController < ApplicationController
  skip_before_action :require_login

  def new
    @request = Request.new
    @slot = Slot.find(params[:slot_id])
  end

  def create
    @request = Request.new(params[:request])
    @request.request = request

    if @request.deliver
      flash.now[:notice] = 'Thank you for your message. We will get back to you soon!'
    
      redirect_to root_path
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

private

  def request_params
    params.require(:request).permit(:name, :email, :message, :nickname, :telephone, :type)
  end
     
end
