class ContactsController < ApplicationController
  def create
    flash[:success] = 'Thank-you. Someone will be in contact shortly.'
    respond_to do |format|
      format.js { }
    end
  end
end

