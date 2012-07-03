class AddScheduleTourIdToAmenity < ActiveRecord::Migration
  def change
    add_column :amenities, :schedule_tour_id, :integer
  end
end
