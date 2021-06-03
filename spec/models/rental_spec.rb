require 'rails_helper'

RSpec.describe Rental, type: :model do
  it "Imóvel criado com sucesso" do
  rental = Rental.new(
    title: "Apartamento montado",
    address_id: 1,
    user_id: 1,
    price: 2000,
    bathroom: 2,
    bedroom: 3,
    garage: 2,
    squareft: 200,
    main_photo: "https://res.cloudinary.com/dloadb2bx/image/upload/v1622565610/photo-1522708323590-d24dbb6b0267_tf7w1b.jpg",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum malesuada lectus vitae lectus elementum suscipit. Cras volutpat massa eget eleifend imperdiet. In eu pellentesque urna, et dapibus massa. Nulla facilisi. Nunc sodales sapien mauris, at tincidunt ipsum accumsan vitae. Praesent sit amet odio vitae dui tincidunt iaculis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas vel metus placerat, posuere lorem a, tristique odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eu lacus sed urna finibus sagittis vel sit amet turpis. Nullam at metus feugiat mauris convallis feugiat. Praesent bibendum ut dolor ac rutrum. Vestibulum odio orci, imperdiet eget felis euismod, molestie volutpat eros.",
  )
  expect(rental.title).to eql "Apartamento montado"
  expect(rental.address_id).to eql 1
  expect(rental.user_id).to eql 1
  expect(rental.price).to eql 2000
  expect(rental.bathroom).to eql 2
  expect(rental.bedroom).to eql 3
  expect(rental.garage).to eql 2
  expect(rental.squareft).to eql 200
  expect(rental.main_photo).to eql "https://res.cloudinary.com/dloadb2bx/image/upload/v1622565610/photo-1522708323590-d24dbb6b0267_tf7w1b.jpg"
  expect(rental.content).to eql "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum malesuada lectus vitae lectus elementum suscipit. Cras volutpat massa eget eleifend imperdiet. In eu pellentesque urna, et dapibus massa. Nulla facilisi. Nunc sodales sapien mauris, at tincidunt ipsum accumsan vitae. Praesent sit amet odio vitae dui tincidunt iaculis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas vel metus placerat, posuere lorem a, tristique odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eu lacus sed urna finibus sagittis vel sit amet turpis. Nullam at metus feugiat mauris convallis feugiat. Praesent bibendum ut dolor ac rutrum. Vestibulum odio orci, imperdiet eget felis euismod, molestie volutpat eros."
end
end
