class CreateMaiores < ActiveRecord::Migration
  def change
    create_table :maiores do |t|
      	
      t.timestamps
    end
  end
end
