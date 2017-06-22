class PostsController < ApplicationController

    before_action :get_user,              only: [ :show, :edit, :update ]


  def new
  end

  def create
     p = user_params
     p[:user_id] = @current_user.id

     Post.create p
     redirect_to user_path(@current_user.id)
  end

  def edit
  end

  def update
  end

  def show
  end

  def index
  end

  def destroy
  end

  private
  def user_params
    params.require(:post).permit( :title , :content )
  end
end
