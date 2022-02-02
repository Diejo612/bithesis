class LinesController < ApplicationController

  def index
    @lines = Line.all
    @interview = Interview.where(user: current_user).last
    @date = @interview.date
  end
end
