class EnrollmentsController < ApplicationController
  def new
    # retrieve the course to build the right action in the form
    @course = Course.find(params[:course_id])
    @enrollment = Enrollment.new
  end

  def create
    @enrollment = Enrollment.new(enrollment_params)
    @course = Course.find(params[:course_id])
    @enrollment.course = @course # AN INSTANCE OF COURSE
    if @enrollment.save
      redirect_to course_path(@course)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def enrollment_params
    params.require(:enrollment).permit(:started_at, :student_id)
  end
end
