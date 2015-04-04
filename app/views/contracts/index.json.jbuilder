json.array!(@contracts) do |contract|
  json.extract! contract, :id, :title, :ref, :region, :uploadedBy, :savings, :dept, :supplier, :validFrom, :validTo
  json.url contract_url(contract, format: :json)
end
