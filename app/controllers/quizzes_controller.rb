class QuizzesController < ApplicationController
  before_action :logged_in_instructor, only: [:new, :edit, :update, :destroy]

  def new
    @topics = Topic.all
    @quiz = Quiz.new
    if(params[:topic_from])
      @quiz[:topic_id] = params[:topic_from]
    end
  end

  def create
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
      flash[:success] = "Quiz created!"
      redirect_to @quiz
    else
      render 'new'
    end
  end

  def index
    @quizzes = Quiz.paginate(page: params[:page], :per_page =>10)
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

  def edit
    @quiz = Quiz.find(params[:id])
  end

  def update
    @quiz = Quiz.find(params[:id])
    if @quiz.update_attributes(quiz_params)
      flash[:success] = "Quiz updated"
      redirect_to @quiz
    else
      render 'edit'
    end
  end

  private

  def quiz_params
    params.require(:quiz).permit(:question, :answer, :remark, :topic_id)
  end

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
