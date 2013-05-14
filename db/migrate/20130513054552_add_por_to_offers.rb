class AddPorToOffers < ActiveRecord::Migration
  def change
  	change_table :offers do |t|
      t.decimal :por
    end
  end
end
