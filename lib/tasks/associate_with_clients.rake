namespace :clients do
  task :associate_business_transactions do
    clients = Client.collect(&:regex)
    BusinessTransaction.where('client_id is NULL').each do |transaction|
      clients.each do |client|
        match = transaction =~ client
        transaction.update_attribute(:client_id, client.id) && break if match
      end
    end
  end
end
