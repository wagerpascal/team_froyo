class InstructorsController < ApplicationController
  
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
  
  def show
    @instructor = Instructor.find(params[:id])
  end
  
  def new
    @instructor = Instructor.new
  end
  
  private

    def instructor_params
      params.require(:instructor).permit(:name, :email, :password,
                                   :password_confirmation)
    end
    
end
