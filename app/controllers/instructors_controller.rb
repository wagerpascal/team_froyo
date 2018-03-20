class InstructorsController < ApplicationController
  before_action :logged_in_instructor, only: [:index, :edit, :update, :destroy]
  before_action :correct_instructor,   only: [:edit, :update]
  before_action :admin_instructor,     only: :destroy
  def create
    @instructor = Instructor.new(instructor_params)
    if @instructor.save
      log_in @instructor
      flash[:success] = "Signed up successfully!"
      redirect_to @instructor
    else
      render 'new'
    end
  end
  
  def index
    @instructors = Instructor.paginate(page: params[:page], :per_page =>10)
  end
  
  def show
    @instructor = Instructor.find(params[:id])
  end
  
  def new
    @instructor = Instructor.new
  end
  
  def edit
    @instructor = Instructor.find(params[:id])
  end
  
    def update
    @instructor = Instructor.find(params[:id])
    if @instructor.update_attributes(instructor_params)
      flash[:success] = "Profile updated"
      redirect_to @instructor
    else
      render 'edit'
    end
  end
  
  def destroy
    Instructor.find(params[:id]).destroy
    flash[:success] = "Instructor deleted"
    redirect_to instructors_url
  end
  
  private

    def instructor_params
      params.require(:instructor).permit(:name, :email, :password,
                                   :password_confirmation)
    end
    
    def logged_in_instructor
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    
    def correct_instructor
      @instructor = Instructor.find(params[:id])
      redirect_to(root_url) unless current_instructor?(@instructor)
    end
    
    def admin_instructor
      redirect_to(root_url) unless current_instructor.admin?
    end
end
