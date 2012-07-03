class AddCommentsToScheduleTour < ActiveRecord::Migration
  def change
    add_column :schedule_tours, :comments, :text
  end
end
