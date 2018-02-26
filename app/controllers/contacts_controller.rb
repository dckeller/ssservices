class ContactsController < ApplicationController
    skip_before_action :require_login

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
        @contact.request = request

        if @contact.deliver
        	@contact = Contact.new

        	redirect_to root_path
        else 
        	render 'new'
        end 	
	end

    private

    def contact_params
        params.require(:contact).permit(:name, :email, :message, :nickname)
    end   

end
