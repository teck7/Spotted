class CreateAdverts < ActiveRecord::Migration[5.0]
  def change
    create_table :adverts do |t|
      t.references :user, foreign_key: true
      t.string :business_name
      t.string :business_number
      t.string :advert_title
      t.string :advert_image
      t.text :advert_description
      t.integer :advert_period
      t.string :advert_location
      t.string :advert_sticker_location
      t.integer :payout_per_mile

      t.timestamps
    end
  end
end
