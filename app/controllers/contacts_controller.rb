class ContactsController < ApplicationController
  def create
    contact = Contact.new(params[:contact])
    respond_to do |format|
      begin
        unless Email.contact(contact).deliver
          raise 'NoEmail'
        end
        format.json { head :ok }
      rescue
        format.json { head 422 }
      end
    end
  end
end