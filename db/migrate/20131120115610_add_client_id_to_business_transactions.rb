class AddClientIdToBusinessTransactions < ActiveRecord::Migration
  def change
    add_column :business_transactions, :client_id, :integer
  end
end
