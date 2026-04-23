class AddDescriptionToSchedules < ActiveRecord::Migration[7.2]
  def change
    add_column :schedules, :description, :text
  end
end
