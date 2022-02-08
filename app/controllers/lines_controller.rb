class LinesController < ApplicationController

  def index
    @lines_all = Line.all
    if current_user.assignation.count > 0
      @lines = current_user.assignation.map { |a| a.line }
      @active_line = @lines.first.id - 1
    end
    unless current_user.teacher
      @interview = Interview.where(user: current_user).last
      if @interview
        @date = @interview.date
      end
    end

  @dashboard= User.where(teacher: false)
  end

  def show
    @alummni = User.find(params[:id])
    @assignations = Assignation.where(user_id: @alummni.id)
  end
end
