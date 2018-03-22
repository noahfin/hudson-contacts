class ContactsController < ApplicationController
  def index
    contact_groups
    end
  end

  def new
    contact_groups
  end

  def create
    @contact =Contact.new(contact_params)
    if @contact.save
      flash[:success] = "contact was successfully created."
      redirect_to contacts_path
    else
      render 'new'
    end
  end


private


def contact_params
  params.require(:contact).permit(:name, :email, :company, :address, :phone, :cell, :group_id )

end

  def contact_groups
    if params[:group_id] && !params[:group_id].empty?
      # @contacts =Contact.where(group_id: params[:group_id]).page(params[:page])
      @contacts = Group.find(params[:group_id]).contacts.page(params[:page])
    else
      @contacts = Contact.page(params[:page])
    end
  end
end
