class CreateBusinessTransactions < ActiveRecord::Migration
  def change
    create_table :business_transactions do |t|
      t.date :date
      t.string :description
      t.decimal :amount, :precision => '19,4'
      t.decimal :balance, :precision => '19,4'

      t.timestamps
    end
  end
end
