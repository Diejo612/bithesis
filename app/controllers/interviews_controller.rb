class InterviewsController < ApplicationController
  def new
    @interview = Interview.new
  end

  def create
    @user = current_user
    @interview = Interview.new(interview_params)
    @interview.user = @user

    if @interview.save
      @user.set_interview = true
      @user.save
      redirect_to lines_path
    else
      render :new
    end
  end

  private

  def interview_params
    params.require(:interview).permit(:date)
  end
end
