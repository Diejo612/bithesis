class InterviewsController < ApplicationController
  def new
    @interview = Interview.new
    start_date = params.fetch(:start_date, Date.today).to_date
    @meetings = Meeting.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
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
