class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def index
    @user  = User.find(session[:current_user_id])
    if @user.present?
      @contact = @user.contact
    else
      redirect_to '/login'
    end
  end

  def create
    contact = Contact.new(contact_params)
    @user  = User.find(session[:current_user_id])
    contact.user_id = @user.id
    if contact.save
      redirect_to '/contacts'
    else
      format.html { render :new }
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    contact = Contact.find(params[:id])
    if contact.update(contact_params)
      redirect_to '/contacts'
    else
      render 'edit'
    end
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    redirect_to contacts_path
  end

  private
  def contact_params
    params.require(:contact).permit(:name,:email,:phone,:address)
  end

end
