class UsersController < ApplicationController


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    userexist = User.find_by_email(@user.email)
    User.bulk_insert
    if userexist.present?
      redirect_to '/login' , notice: 'User already present'
    else
      if @user.save
        respond_to do |format|
          format.html { redirect_to '/login', notice: 'User was successfully created.' }
        end
      else
        #format.html { render :new }
        render :new
      end
    end
  end

  def login
    @user = User.new
  end

  def signup
    @user  = User.find_by_email(user_params[:email])
    if @user.present? && @user.password ==(user_params[:password])
      session[:current_user_id] = @user.id
      redirect_to '/messages'
    else
      redirect_to '/login'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name,:password,:email,:contactno,:about,:address,:age)
  end
end
