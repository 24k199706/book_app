class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update]
  def new
    @user = User.new
  end

  def create
    @user=User.new(user_params)
    if @user.save
      password_user=PasswordAnswer.new(answer: params[:user][:reset_answer], password_question_id: params[:user][:reset_question],user_id: @user.id)
      password_user.save
      log_in @user
      redirect_to root_path
    else
      render "new"
    end
  end

  def show
    @user=User.find(params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user=User.find_by(id:params[:id])
    if @user.update(user_params)
      redirect_to users_show_path
    else
      render "edit"
    end
  end
  def resign
    user=User.find_by(id: params[:id])
    user.posts.each do |post|
      post.delete_flg= true
      post.save 
    end
    user.resign=true
    user.save
    log_out
    redirect_to root_path
  end

  def reupdate
    @user=User.find_by(email: params[:renew][:email])
    if @user
      @user.resign=false
      @user.save
      @user.posts.each do |post|
        post.delete_flg= false
        post.save
      end
      log_in @user
      redirect_to root_path
    end
  end


  private
    def user_params
      params.require(:user).permit(:name,:email,:password,:password_confirmation)
    end
    def logged_in_user
      unless logged_in?
        redirect_to login_new_path
      end
    end
end
