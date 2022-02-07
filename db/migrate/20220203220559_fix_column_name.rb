class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :tasks, :type, :tipo
    rename_column :tasks, :video_url, :url
  end
end
