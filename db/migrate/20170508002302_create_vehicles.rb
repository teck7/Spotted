class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.references :user, foreign_key: true
      t.string :car_make
      t.string :car_model
      t.date :car_built
      t.string :car_color
      t.string :car_rego

      t.timestamps

    end
  end
end
