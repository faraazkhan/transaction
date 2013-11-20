json.array!(@clients) do |client|
  json.extract! client, :name, :regex, :credits, :debits
  json.url client_url(client, format: :json)
end
