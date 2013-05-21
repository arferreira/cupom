class CreateTermoUsos < ActiveRecord::Migration
  def change
    create_table :termo_usos do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
