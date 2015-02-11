class ContactsController < ApplicationController
	protect_from_forgery except: :tokeninput
	def new
		@contact = Contact.new
	end

	def index
		
	end

	def create
		@contact = Contact.new(contact_params)
		respond_to do |format|
			if @contact.save
				format.html {render :new, notice: "Thank you for contacting us, we will respond to you in a timely manner!"}
			else 
				format.html {render :new, @contact.errors, status: :unprocessable_entity}
			end
		end
	end

	private
		def set_contact
			@contact = Contact.find(params[:id])			
		end
		
		def contact_params
			params.require(:contact).permit(:name, :email, :message)
		end

end
