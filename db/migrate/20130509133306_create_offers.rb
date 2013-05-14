class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :title
      t.text :content
      t.text :rules
      t.string :contact
      t.string :address
      t.string :price
      t.string :dicount
      t.references :category
      t.references :city
      t.integer :count
      t.date :start_date
      t.date :final_date

      t.timestamps
    end
    add_index :offers, :category_id
    add_index :offers, :city_id
  end
end
