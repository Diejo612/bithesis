class LinesController < ApplicationController

  def index
    @lines_all = Line.all
    if current_user.assignation
      @lines = current_user.assignation.map { |a| a.line }
    end
    @active_line = @lines.first.id - 1
    unless current_user.role == 'teacher'
      @interview = Interview.where(user: current_user).last
      if @interview
        @date = @interview.date
      end
    end
  end
end
