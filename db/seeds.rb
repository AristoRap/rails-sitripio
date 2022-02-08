# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Deleting bookings'
Booking.delete_all
puts 'bookings deleted'

puts 'Deleting offers'
Offer.delete_all
puts 'offers deleted'

puts 'Deleting users'
User.delete_all
puts 'Users deleted'

puts '----------------------------------------------------------------'

puts 'Creating 4 users'
4.times do |i|
  puts "Creating user #{i + 1}"
  user = User.new(
    {
      email: Faker::Internet.email,
      password: (0...8).map { (65 + rand(26)).chr }.join
    }
  )
  if user.save
    puts "User #{i + 1} saved!"
  else
    puts "XXXXXXXXXXXXXX"
    puts "Issue with user #{i + 1}"
    puts "XXXXXXXXXXXXXX"
  end
end

puts 'Creating 6 offers'
6.times do |i|
  puts "Creating offer #{i + 1}"
  offer = Offer.new(
    {
      title: "Awesome #{Faker::Team.sport} camp in #{Faker::Address.city}, #{Faker::Address.country}",
      description: "Awesome #{Faker::Team.sport} camp",
      location: Faker::Address.country,
      fee: rand(90..160),
      start_date: Date.today,
      end_date: Date.today + rand(90),
      organizer: User.all.sample,
      capacity: rand(1..10)
    }
  )
  if offer.save
    puts "Offer #{i + 1} saved!"
  else
    puts "XXXXXXXXXXXXXX"
    puts "Issue with offer #{i + 1}"
    puts "XXXXXXXXXXXXXX"
  end
end

puts 'Creating 2 bookings'
2.times do |i|
  puts "Creating booking #{i + 1}"
  offer = Offer.all.sample

  booking = Booking.new(
    {
      user: User.all.reject { |user| user == offer.organizer }.sample,
      offer: offer,
      start_date: offer.start_date,
      end_date: offer.end_date
    }
  )
  if booking.save
    puts "Booking #{i + 1} saved!"
  else
    puts "XXXXXXXXXXXXXX"
    puts "Issue with booking #{i + 1}"
    puts "XXXXXXXXXXXXXX"
  end
end
