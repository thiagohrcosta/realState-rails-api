require 'rails_helper'

RSpec.describe Address, type: :model do
    it "Endereço criado com sucesso" do
    address = Address.new(
      street: "Avenida Amazonas",
      number: "1020",
      neighborhood: "Centro",
      city: "Belo Horizonte",
      country: "Brasil"
    )
    expect(address.street).to eql "Avenida Amazonas"
    expect(address.number).to eql "1020"
    expect(address.neighborhood).to eql "Centro"
    expect(address.city).to eql "Belo Horizonte"
    expect(address.country).to eql "Brasil"
  end

  it "Logradouro não pode ser vazio" do
    address = Address.new(
      street: "",
      number: "1020",
      neighborhood: "Centro",
      city: "Belo Horizonte",
      country: "Brasil"
    )
    expect(address).to_not be_valid
  end

  it "Número não pode ser vazio" do
    address = Address.new(
      street: "Avenida Amazonas",
      number: "",
      neighborhood: "Centro",
      city: "Belo Horizonte",
      country: "Brasil"
    )
    expect(address).to_not be_valid
  end

  it "Bairro não pode ser vazio" do
    address = Address.new(
      street: "Avenida Amazonas",
      number: "1020",
      neighborhood: "",
      city: "Belo Horizonte",
      country: "Brasil"
    )
    expect(address).to_not be_valid
  end

  it "Bairro não pode ser vazio" do
    address = Address.new(
      street: "Avenida Amazonas",
      number: "1020",
      neighborhood: "",
      city: "Belo Horizonte",
      country: "Brasil"
    )
    expect(address).to_not be_valid
  end

  it "Cidade não pode ser vazio" do
    address = Address.new(
      street: "Avenida Amazonas",
      number: "1020",
      neighborhood: "Centro",
      city: "",
      country: "Brasil"
    )
    expect(address).to_not be_valid
  end

  it "País não pode ser vazio" do
    address = Address.new(
      street: "Avenida Amazonas",
      number: "1020",
      neighborhood: "Centro",
      city: "Belo Horizonte",
      country: ""
    )
    expect(address).to_not be_valid
  end





end
