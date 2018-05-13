# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Area.pluck(:id).empty?
  for i in 1..1 do
    puts name = Faker::Address.street_address.to_s + Faker::Address.street_name.to_s + Faker::Address.state.to_s
    a = Area.create(
      name: name
    )

    for i in 1..rand(1) do
      puts name = Faker::Zelda.character
      a.agencies.create(
        name: name,
        address: Faker::Address.street_address.to_s + Faker::Address.street_name.to_s + Faker::Address.state.to_s,
        phone_no: Faker::PhoneNumber.phone_number,
        tax_code: Faker::Number.number(10)
      )
    end
    for i in 1..rand(1) do
      puts name = Faker::Name.name
      a.users.create(
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
end
if Category.pluck(:id).empty?
  for i in 1..5 do
    puts name = Faker::Zelda.character
    Category.create(
      name: name
    )
  end
end
if Provider.pluck(:id).empty?
  for i in 1..1 do
    puts name = Faker::Simpsons.character
    a = Provider.create(
      name: name,
      address: Faker::Address.street_address.to_s + Faker::Address.street_name.to_s + Faker::Address.state.to_s,
      phone_no: Faker::PhoneNumber.phone_number,
      tax_code: Faker::Number.number(10),
    )
    for i in 1..rand(1..1)
      date = Date.today - rand(30)
      b = a.products.create(
        name: Faker::Dune.title,
        description: Faker::Dune.quote,
        category_id: rand(1..5),
        price: rand(10**3..10**9),
        unit: '$',
        date_import: Date.today - rand(1..100)

      )
    end
    for i in 1..rand(1) do
      b = DeliverySlip.create(
        date_deliver: date,
        date_received: date + rand(20),
        total_money: rand(10**3..10**6),
        agency_id: a.id
      )
      for i in 1..rand(1) do
        DeliverySlipDetail.create(
          amount: rand(1..20),
          unit: '$',
          product_id: rand(1..10),
          delivery_slip_id: rand(1..200)
        )
      end
    end
  end
end
if Contract.pluck(:id).empty?
  for i in 1..1 do
    puts date_create = Date.today - rand(1..30)
      Contract.create(
        date_create: date_create,
        total_money: rand(10**3..10**5),
        user_id: rand(1..30),
        provider_id: i
      )
  end
end
