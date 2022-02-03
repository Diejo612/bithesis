class LinesController < ApplicationController

  def index
    if current_user.assignation
      @lines = current_user.assignation.map { |a| a.line }
    end
    unless current_user.role == 'teacher'
      @interview = Interview.where(user: current_user).last
      if @interview
        @date = @interview.date
      end
    end
  end
end
