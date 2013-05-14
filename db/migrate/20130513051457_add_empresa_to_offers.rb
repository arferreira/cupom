class AddEmpresaToOffers < ActiveRecord::Migration
  def change
  	change_table :offers do |t|
      t.references :empresa
    end
  end
end
