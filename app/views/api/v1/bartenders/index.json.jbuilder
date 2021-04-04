json.array! @bartenders do |bartender|
  json.extract! bartender, :id, :name, :address
end
