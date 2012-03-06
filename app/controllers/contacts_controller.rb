class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    render :layout => 'contact_inquiery'
  end

  def create
    @contact = Contact.new(params[:contact])

    if @contact.valid?
      @contact.send_email
      flash.now[:success] = 'Thank-you. Someone will be in contact shortly.'
      respond_to do |format|
        format.html { render :template => 'home/index' }
        format.js { }
      end
    else
      flash.now[:error] = 'Please fill in the required fields'
      render :template => 'home/index'
    end
  end
end

