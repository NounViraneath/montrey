namespace :db do
  desc "Fill database with sample datas."
  task :fill_users => :environment do
    u = User.new
    u.name = 'neath'
    u.email = 'neath@gmail.com'
    u.phone = '12345678'
    u.password = '12345678'
    u.save!
      
    20.times do |i|
      u = User.new
      u.name = Faker::Name.name
      u.email = Faker::Internet.free_email
      u.phone = Faker::PhoneNumber.phone_number
      u.password = '12345678'
      u.save!
    end
  end
  
  task :fill_training_courses => :environment do
    20.times do |i|
      u = TrainingCourse.new
      u.title = 'Training Course Title'+i.to_s
      u.start_from = Date.today
      u.end_at = Date.today
      u.destination = Faker::Address.state
      u.promoter = 'Ministry of '+Faker::Lorem.word
      u.save!
    end
  end
end