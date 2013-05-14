class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :name
      t.text :endereco
      t.string :contato

      t.timestamps
    end
  end
end
