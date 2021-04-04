json.extract! @bartender, :id, :name, :address, :user_id, :latitude, :longitude
json.cocktails @bartender.cocktails do |cocktail|
  json.extract! cocktail, :id, :name
end
