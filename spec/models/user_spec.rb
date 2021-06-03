require 'rails_helper'

RSpec.describe User, type: :model do
  it "Cria um usuário com sucesso" do
    user = User.new(
      email: "admin@admin.com",
      password: "123456"
      )
    expect(user.email).to eql "admin@admin.com"
  end

  it "Usuário não pode ter email em branco" do
    user = User.new(
      email: "",
      password: "123456"
    )
    expect(user).to_not be_valid
  end

  it "Usuário não pode ter senha vazia" do
    user = User.new(
      email: "admin@admin.com",
      password: ""
    )
    expect(user).to_not be_valid
  end

end
