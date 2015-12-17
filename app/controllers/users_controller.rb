class UsersController < ApplicationController
  before_filter :authorize, only: [:show]

  def new
    if current_user
      redirect_to profile_path
    else
      @user = User.new
      render :new
    end
  end

  def create
    if current_user
      redirect_to profile_path
    else
      user = User.new(user_params)
      if user.save
        session[:user_id] = user.id
        flash[:notice] = "Successfully signed up."
        redirect_to :back
      else
        flash[:error] = user.errors.full_messages.join(', ')
        redirect_to signup_path
      end
    end
  end

  def show
    @comments = Comment.where(user_id: current_user).reverse_order.limit(15)
    @posts = Post.where(user_id: current_user).reverse_order.limit(15)
    render :show
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end

end