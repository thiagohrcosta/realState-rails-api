puts "Destroy all previous db";

Address.destroy_all
Rental.destroy_all
User.destroy_all

puts "Add user..."

User.create!(
  email: "thiago@costa.com",
  password: "123456"
)

puts "Adding new database............"

Address.create!(
  street: "Rua dos Goitacazes",
  number: "292",
  neighborhood: "Centro",
  city: "Belo Horizonte",
  country: "Brazil"
)

Address.create!(
  street: "Rua dos Tupis",
  number: "700",
  neighborhood: "Centro",
  city: "Belo Horizonte",
  country: "Brazil"
)

Address.create!(
  street: "Rua São Paulo",
  number: "605",
  neighborhood: "Centro",
  city: "Belo Horizonte",
  country: "Brazil"
)

puts "Address created..."

puts "Add new rental to db..."

Rental.create!(
  title: "Apartamento montado",
  address_id: 1,
  user_id: 1,
  price: 2000,
  bathroom: 2,
  bedroom: 3,
  garage: 2,
  squareft: 200,
  main_photo: "https://res.cloudinary.com/dloadb2bx/image/upload/v1622565610/photo-1522708323590-d24dbb6b0267_tf7w1b.jpg",
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum malesuada lectus vitae lectus elementum suscipit. Cras volutpat massa eget eleifend imperdiet. In eu pellentesque urna, et dapibus massa. Nulla facilisi. Nunc sodales sapien mauris, at tincidunt ipsum accumsan vitae. Praesent sit amet odio vitae dui tincidunt iaculis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas vel metus placerat, posuere lorem a, tristique odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eu lacus sed urna finibus sagittis vel sit amet turpis. Nullam at metus feugiat mauris convallis feugiat. Praesent bibendum ut dolor ac rutrum. Vestibulum odio orci, imperdiet eget felis euismod, molestie volutpat eros."
)


Rental.create!(
  title: "Próximo ao centro",
  address_id: 2,
  user_id: 1,
  price: 2500,
  bathroom: 2,
  bedroom: 2,
  garage: 1,
  squareft: 230,
  main_photo: "https://res.cloudinary.com/dloadb2bx/image/upload/v1622565782/photo-1515263487990-61b07816b324_klurur.jpg",
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum malesuada lectus vitae lectus elementum suscipit. Cras volutpat massa eget eleifend imperdiet. In eu pellentesque urna, et dapibus massa. Nulla facilisi. Nunc sodales sapien mauris, at tincidunt ipsum accumsan vitae. Praesent sit amet odio vitae dui tincidunt iaculis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas vel metus placerat, posuere lorem a, tristique odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eu lacus sed urna finibus sagittis vel sit amet turpis. Nullam at metus feugiat mauris convallis feugiat. Praesent bibendum ut dolor ac rutrum. Vestibulum odio orci, imperdiet eget felis euismod, molestie volutpat eros."
)


Rental.create!(
  title: "Melhor vista da cidade",
  address_id: 3,
  user_id: 1,
  price: 3500,
  bathroom: 3,
  bedroom: 3,
  garage: 2,
  squareft: 260,
  main_photo: "https://res.cloudinary.com/dloadb2bx/image/upload/v1622566100/photo-1494161402158-1b81a9a904bb_anuzr8.jpg",
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum malesuada lectus vitae lectus elementum suscipit. Cras volutpat massa eget eleifend imperdiet. In eu pellentesque urna, et dapibus massa. Nulla facilisi. Nunc sodales sapien mauris, at tincidunt ipsum accumsan vitae. Praesent sit amet odio vitae dui tincidunt iaculis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas vel metus placerat, posuere lorem a, tristique odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eu lacus sed urna finibus sagittis vel sit amet turpis. Nullam at metus feugiat mauris convallis feugiat. Praesent bibendum ut dolor ac rutrum. Vestibulum odio orci, imperdiet eget felis euismod, molestie volutpat eros."
)
