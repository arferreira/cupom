class CreateAcabandos < ActiveRecord::Migration
  def change
    create_table :acabandos do |t|

      t.timestamps
    end
  end
end
