class CreateScheduleTours < ActiveRecord::Migration
  def change
    create_table :schedule_tours do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :ip_address
      t.date :tour_date
      t.integer :satisfaction
      t.timestamps
    end
  end
end
