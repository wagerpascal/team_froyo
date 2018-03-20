class SessionsController < ApplicationController
  def new
  end
  
  def create
    instructor = Instructor.find_by(email: params[:session][:email].downcase)
    if instructor && instructor.authenticate(params[:session][:password])
      log_in instructor
      params[:session][:remember_me] == '1' ? remember(instructor) : forget(instructor)
      redirect_back_or instructor
    else
      flash.now[:danger] = 'Invalid email/password combination.'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
  
end
