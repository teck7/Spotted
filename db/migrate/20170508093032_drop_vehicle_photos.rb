class DropVehiclePhotos < ActiveRecord::Migration[5.0]
  def change
    drop_table :vehicle_photos
  end
end
