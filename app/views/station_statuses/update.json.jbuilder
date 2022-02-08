if @station_status.persisted?
  json.inserted_item json.partial!('lines/status_line.html.erb', line: @line)
end
