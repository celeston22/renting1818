class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.string :title
      t.string :type
      t.string :description
      t.integer :daily_price
      t.string :address_line_1
      t.string :address_line_2
      t.string :zipcode
      t.string :city
      t.string :country
      t.boolean :enable
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
