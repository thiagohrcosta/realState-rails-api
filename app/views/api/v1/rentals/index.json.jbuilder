json.array! @rentals do |rental|
  json.extract! rental, :id, :title, :address, :price, :bathroom, :bedroom, :garage, :squareft, :main_photo
end
