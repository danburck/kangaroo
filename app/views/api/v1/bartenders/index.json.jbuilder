json.array! @bartenders do |bartender|
  json.extract! bartender, :id, :name, :address, :user_id, :latitude, :longitude
end
