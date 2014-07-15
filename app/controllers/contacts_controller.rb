class ContactsController < ApplicationController
  respond_to :html
  before_filter :require_user
  expose(:contact, attributes: :contact_params)

  def create
    contact.save
    respond_with contact, location: :dashboard
  end
  alias update create

  def destroy
    contact.destroy
    redirect_to :dashboard
  end

  protected

  def contact_params
    params.require(:contact).permit(:name, :cell, :email)
  end
end
