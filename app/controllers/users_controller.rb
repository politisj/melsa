class UsersController < ApplicationController
  before_action :get_user,       only: [ :show, :edit, :update ]

  def get_user
    @user = User.find params["id"]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create user_params

    if @user.id.present?
      session[:user_id] = @user.id          # perform login (set session)
      redirect_to user_path(@user.id)       # /users/17
    else
       @user.save
       render :new
    end

  end

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
    @user.update user_params
    redirect_to user_path( params["id"] )
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:email, :name, :image, :password, :password_confirmation , :job_title )
  end

end
