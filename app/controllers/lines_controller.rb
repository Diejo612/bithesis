class LinesController < ApplicationController

  def index
    @lines = Line.all
    unless current_user.role == 'teacher'
      @interview = Interview.where(user: current_user).last
      @date = @interview.date
    end
  end
end
