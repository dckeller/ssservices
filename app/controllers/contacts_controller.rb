class ContactsController < ApplicationController
    skip_before_action :require_login

    def index
      @contact = Contact.new(params[:contact])
  end

  def create
      @contact = Contact.new(params[:contact])
      @contact.request = request

      respond_to do |f|
        if @contact.deliver
            @contact = Contact.new

            f.html { render 'sessions/index' }
            f.js { flash.now[:success] = @message = "Thank you for your message, we'll get back to you within 1 business day" }
        else 
        	f.html { render 'index' }
            f.js { flash.now[:error] = @message = "Cannot send message at this time." }
        end 
    end	
end

private

def contact_params
    params.require(:contact).permit(:name, :email, :message, :nickname)
end   

end
