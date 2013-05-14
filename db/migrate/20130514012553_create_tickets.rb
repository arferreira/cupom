class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.references :offer
      t.references :user
      t.string     :token
      t.timestamps
    end
  end
end
