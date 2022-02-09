class StationStatusesController < ApplicationController
  def update
    @station_status = StationStatus.find(params[:id])
    @station = @station_status.station #bienvenida
    @line = @station.line  # Linea principal
    @tasks = @station.tasks #1 video
    @statuses = @tasks.map { |task| TaskStatus.where(user: current_user, task: task).first }
    @completed = @statuses.all? { |status| status.completed }
    @station_status.update( completed: @completed )
    @station_status.save
    # respond_to do |format|
    #   if @station_status.save
    #     format.html { render 'lines/index' }
    #     format.json # Follow the classic Rails flow and look for a create.json view # Follow the classic Rails flow and look for a create.json view
    #   end
    # end
  end
end
