json.array! @rentals do |rental|
  json.extract! rental, :id, :title, :address_id, :price, :bathroom, :bedroom, :garage, :squareft
end
