class Client < ActiveRecord::Base
  has_many :business_transactions
end
