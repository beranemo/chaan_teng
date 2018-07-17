namespace :dev do
  task fake_restaurants: :environment do
    Restaurant.destroy_all

    500.times do |i|
      Restaurant.create!(
        name: FFaker::Name.first_name,
        opening_hours: FFaker::Time.datetime,
        tel: FFaker::PhoneNumber.short_phone_number,
        address: FFaker::Address.street_address,
        description: FFaker::Lorem.paragraph
      )
    end
    puts "have created fake restaurants"
    puts "now you have #{Restaurant.count} restaurants data"
  end
  
  task rebuild: ["db:drop", "db:create", "db:migrate", "db:seed", :fake_restaurants]
  
end
