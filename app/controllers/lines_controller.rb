class LinesController < ApplicationController

  def index
    @lines_all = Line.all
    if current_user.assignation.count > 0
      @lines = current_user.assignation.map { |a| a.line }
      @active_line = @lines.first.id - 1
      start_date = params.fetch(:start_date, Date.today).to_date
      @meetings = Meeting.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)

    end
    unless current_user.teacher
      @interview = Interview.where(user: current_user).last
      if @interview
        @date = @interview.date
      end
    end

  @dashboard= User.all
  end

  def show
    @alummni= User.find(params[:id])
    @status= Assignation.where(user_id: @alummni.id)
  end
end
