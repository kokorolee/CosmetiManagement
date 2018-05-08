# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Area.pluck(:id).empty?
  for i in 1..50 do
    a = Area.create(
      name: Faker::Address.street_address.to_s + Faker::Address.street_name.to_s + Faker::Address.state.to_s
    )
    for i in 1..rand(10) do
      a.agencies.create(
        name: Faker::Zelda.character,
        address: Faker::Address.street_address.to_s + Faker::Address.street_name.to_s + Faker::Address.state.to_s,
        phone_no: Faker::PhoneNumber.phone_number,
        tax_code: Faker::Number.number(10)
      )
    end
  end
end

if Provider.pluck(:id).empty?
  for i in 1..50 do
    a = Provider.create(
      name: Faker::Simpsons.character,
      address: Faker::Address.street_address.to_s + Faker::Address.street_name.to_s + Faker::Address.state.to_s,
      phone_no: Faker::PhoneNumber.phone_number,
      tax_code: Faker::Number.number(10),
    )
    for i in 1..rand(20)
      a.products.create(
        name: Faker::Dune.title,
        description: Faker::Dune.quote,
        usage: Faker::Job.key_skill,
      )
    end
  end
end
if User.pluck(:id).empty?
  for i in 1..30 do
    User.create(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      password: '123123',
      phone_no: Faker::PhoneNumber.phone_number,
      address: Faker::Address.street_address.to_s + Faker::Address.street_name.to_s + Faker::Address.state.to_s,
      birthday: Faker::Date.birthday(18, 30) ,
      gender: Faker::Boolean.boolean
    )
  end
end
