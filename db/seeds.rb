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

puts 'Deleting reviews'
Review.delete_all
puts 'Reviews deleted'

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
  offer1 = Offer.new(
    {
      title: "12 Day Vipassana Silent Meditation Retreat in the Ardales National Park, Andalusia",
      description: "This retreat with Mike Helmle offers the supporting conditions, intensive structure, and personal guidance for meditators to directly and intuitively experience insight into the conditioned nature of the mind-and-body experience you call your lives. Vipassana insights are conditioned phenomena. Vipassana meditation practice is simply putting the right conditions in place. It is cause and effect. If you practice correctly and the conditions are present – your true nature will reveal itself naturally.",
      location: "The Olive Branch, Partido Romerales, 20, 29552 El Chorro, Málaga, Spain",
      fee: 1200,
      start_date: Date.today,
      end_date: Date.today + 12,
      organizer: User.all.sample,
      capacity: 20
    }
  )
  if offer1.save
    puts "Offer #{offer.id} saved!"
  else
    puts "XXXXXXXXXXXXXX"
    puts "Issue with offer #{offer.id}"
    puts "XXXXXXXXXXXXXX"
  end

  offer2 = Offer.new(
    {
      title: "8 Days Fitness and Wellness Retreat on Kos Island",
      description: "Jet off to a fantastic Greek Island and live in luxury in a magnificent boutique villa by night but be out adventuring, exploring, making memories, and working on your fitness by day. Victory Fitness Beach's luxury fitness and wellness retreats are dedicated to encouraging a healthy lifestyle. The week is designed around a variety of conventional fitness activities/classes but also incorporates activities that allow the guests to absorb the local culture and attractions. This isn't your standard three fitness classes a day type retreat, there is just as much focus on wellness and adventure as there is on fitness, whilst living in a luxury boutique villa. This retreat is perfect for somebody that wants to do something different but keep active. One small example is that every guest will be given their own bicycle for the week, nobody is tied to the guest house, everybody is encouraged to go out and explore whenever they like.",
      location: "Asklipion Valley Guest House, 85300 Kos Island, Greece"
      fee: 1100,
      start_date: Date.today,
      end_date: Date.today + 8,
      organizer: User.all.sample,
      capacity: 14
    }
  )
  if offer2.save
    puts "Offer #{offer.id} saved!"
  else
    puts "XXXXXXXXXXXXXX"
    puts "Issue with offer #{offer.id}"
    puts "XXXXXXXXXXXXXX"
  end

  offer3 = Offer.new(
    {
      title: "3 Day Bootcamp Fitness Weekend in Whitland, Wales",
      description: "People have different ideas of what it means to relax! For those of you looking for a more energizing weekend why not join this bootcamp retreat? Kick-start your weekend with a customized ‘Health MOT’ assessment and discuss your health and fitness goals with fitness professional Faye Brownjohn (DFAC World Champion Fitness Professional). You will also have a one-on-one session with a nutritional therapist to support your fitness goals.",
      location: "Old Lan Farmhouse, Login, Whitland, Carmarthenshire, Wales, United Kingdom",
      fee: 1100,
      start_date: Date.today,
      end_date: Date.today + 3,
      organizer: User.all.sample,
      capacity: 25
    }
  )
  if offer3.save
    puts "Offer #{offer.id} saved!"
  else
    puts "XXXXXXXXXXXXXX"
    puts "Issue with offer #{offer.id}"
    puts "XXXXXXXXXXXXXX"
  end

  offer4 = Offer.new(
    {
      title: "30 Day Life Balance Qigong and Meditation Retreat in Pai, Mae Hong Son",
      description: "This training will enable you to do things which most people go through life never knowing to be possible. Nam Yang Kung Fu Retreat will teach you to feel chi energy, to see it, and to project it out of yourself and into another person. As you would expect from a course involving meditation, you will be taught to focus your mind, develop your concentration, and become fully aware, fully present. Get in touch with your own chi and heal yourself from the inside out!",
      location: "Nam Yang Kung Fu Retreat, 116 M. 5, Mae Na Toeng, Pai District, 58130, Thailand",
      fee: 1415,
      start_date: Date.today,
      end_date: Date.today + 30,
      organizer: User.all.sample,
      capacity: 18
    }
  )
  if offer4.save
    puts "Offer #{offer.id} saved!"
  else
    puts "XXXXXXXXXXXXXX"
    puts "Issue with offer #{offer.id}"
    puts "XXXXXXXXXXXXXX"

    offer5 = Offer.new(
      {
        title: "6 Day Wellness RESET Retreat in Clearwater Beach, Florida",
        description: "Healing & Wellness Retreat with individual sessions with Concierge Naturopathic Doctor and Peak Performance Psychologist. Hit the RESET button on your Spirit, mind, and body with 6 glorious days on the sugar sand beaches of Clearwater Beach at the renowned, five-star Sandpearl Beach Resort.",
        location: "Sandpearl Resort, 500 Mandalay Ave, Clearwater Beach, Florida 33767, United States",
        fee: 6750,
        start_date: Date.today,
        end_date: Date.today + 6,
        organizer: User.all.sample,
        capacity: 20
      }
    )
    if offer5.save
      puts "Offer #{offer.id} saved!"
    else
      puts "XXXXXXXXXXXXXX"
      puts "Issue with offer #{offer.id}"
      puts "XXXXXXXXXXXXXX"

      offer6 = Offer.new(
        {
          title: "5 Days Energizing Yoga and Pilates Holiday in Dalyan",
          description: "Come and join Sedir Resort for an exclusive yoga and Pilates retreat in Dalyan, Turkey. Dalyan is an ideal destination for escaping from the stress of daily life. With the resort's natural surroundings, this retreat is the perfect place to re-energize yourself. Discover the healing benefits of relaxation, meditation, and chanting in the tranquil part of Turkey.",
          location: "Sedir Resort, 246 sok. no 18 Dalyan, Mugla, Turkey",
          fee: 750,
          start_date: Date.today,
          end_date: Date.today + 5,
          organizer: User.all.sample,
          capacity: 40
        }
      )
      if offer6.save
        puts "Offer #{offer.id} saved!"
      else
        puts "XXXXXXXXXXXXXX"
        puts "Issue with offer #{offer.id}"
        puts "XXXXXXXXXXXXXX"

puts 'Creating 2 bookings'
2.times do |i|
  puts "Creating booking #{i + 1}"
  offer = Offer.all.sample

  booking = Booking.new(
    {
      user: User.all.reject { |user| user == offer.organizer }.sample,
      offer: offer
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
