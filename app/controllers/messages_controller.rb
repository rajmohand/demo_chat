class MessagesController < ApplicationController

  def index
    @user  = User.find(session[:current_user_id])
    if @user.present?
    @message = Message.where(:reciver_id => @user.id)
    @contact = @user.contact
    else
      redirect_to '/login'
    end
  end

  def new
    @user  = User.find(session[:current_user_id])
    @message = Message.new
    @message.sendername = @user.name
  end

  def create
    existuser = User.find(session[:current_user_id])
    @user  = User.find_by_name(message_params[:toname])
    if @user.present?
    @message = Message.new(message_params)
    @message.user_id = existuser.id
    @message.reciver_id=@user.id
      if @message.save
        redirect_to '/messages'
      else
          format.html { render :new }
      end
    else
      format.html { render :new }
    end
  end

  private
  def message_params
    params.require(:message).permit(:toname,:sendername,:msg)
  end

end
