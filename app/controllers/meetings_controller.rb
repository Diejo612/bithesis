class MeetingsController < ApplicationController
  def new
    @meeting = Meeting.new
  end

  def create
    @user = current_user
    @meeting= Meeting.new(meeting_params)
    @meeting.user_id = @user.id


    if @meeting.save!
      redirect_to lines_path
    else
      render 'new'
    end
  end
	private

  def meeting_params
    params.require(:meeting).permit(:start_time, :end_time)
  end
end
