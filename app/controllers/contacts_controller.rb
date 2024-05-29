# app/controllers/api/v1/contacts_controller.rb
class ContactsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create
        
      @contact = Contact.new(contact_params)
      if @contact.save
        render json: @contact, status: :created
      else
        render json: @contact.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def contact_params
      params.require(:contact).permit(:name, :email, :message)
    end
  end
  