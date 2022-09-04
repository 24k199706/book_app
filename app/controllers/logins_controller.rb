class LoginsController < ApplicationController
  def new

  end

  def create
    user=User.find_by(email:params[:login][:email].downcase)
    if user.resign!=true
      if user&&user.authenticate(params[:login][:password])
        log_in user
        redirect_to root_path
      else
        render "new"
      end
    else
      redirect_to renew_path
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
