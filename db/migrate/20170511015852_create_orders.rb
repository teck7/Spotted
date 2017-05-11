class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :vehicle, foreign_key: true
      t.string :stripe_charge_id

      t.timestamps
    end
  end
end
