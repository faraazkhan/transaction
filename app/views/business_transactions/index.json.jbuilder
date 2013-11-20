json.array!(@business_transactions) do |business_transaction|
  json.extract! business_transaction, :date, :description, :amount, :balance
  json.url business_transaction_url(business_transaction, format: :json)
end
