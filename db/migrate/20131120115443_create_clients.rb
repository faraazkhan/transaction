class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :regex
      t.decimal :credits
      t.decimal :debits

      t.timestamps
    end
  end
end
