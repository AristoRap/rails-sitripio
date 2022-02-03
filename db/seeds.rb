# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Deleting offers'
Offer.delete_all
puts 'offers deleted'

puts 'Deleting users'
User.delete_all
puts 'Users deleted'

puts '----------------------------------------------------------------'

puts 'Creating 3 users'
3.times do |i|
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

puts 'Creating 3 offers'
3.times do |i|
  puts "Creating offer #{i + 1}"
  offer = Offer.new(
    {
      title: 'Awesome surf camp in Baleal, Portugal',
      description: 'Awesome surf camp',
      location: 'Portugal',
      fee: 99.99,
      date: Date.today + rand(90),
      organizer: User.all.sample
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

puts 'Creating 3 bookings'
3.times do |i|
  puts "Creating booking #{i + 1}"
  offer = Offer.all.sample

  booking = Booking.new(
    {
      user: User.all.reject { |user| user == offer.organizer }.sample,
      offer: offer,
      start_date: offer.date,
      end_date: offer.date + rand(5)
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
