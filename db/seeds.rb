5.times do
  User.create({
    last_name: Faker::Name.last_name,
    first_name: Faker::Name.first_name,
    middle_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Code.isbn,
    mobile_number: Faker::PhoneNumber.cell_phone,
    status: Faker::Superhero.name
  })
end

5.times do
  HistoryLog.create({
    last_name: Faker::Name.last_name,
    first_name: Faker::Name.first_name
  })
end

5.times do
  TripTransaction.create({
    pickup_location: Faker::Address.city,
    drop_location: Faker::Address.city,
    trip_amount: Faker::Number.decimal
  })
end

5.times do
  HistoryLoad.create({
    amount_loaded: Faker::Number.decimal
  })
end

5.times do
  BalanceLoad.create({
    amount_loaded: Faker::Number.decimal,
    remaining_load: Faker::Number.decimal
  })
end
