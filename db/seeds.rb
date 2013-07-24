# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@email_counter = 1

5.times do |x|
  u = User.create(:email => "eric.c.mooney+#{@email_counter}@gmail.com", :password => "foobar", :password_confirmation => "foobar")
  run = Exercise.create(:activity => "run", :value => 6.2, :units => "miles", :completed => "2013/07/13")
  u.exercises << run
  bike = Exercise.create(:activity => "bike", :value => 24.5, :units => "miles", :completed => "2013/07/13")
  u.exercises << bike
  swim = Exercise.create(:activity => "swim", :value => 0.9, :units => "miles", :completed => "2013/07/13")
  u.exercises << swim
  kayak = Exercise.create(:activity => "kayak", :value => 3.1, :units => "miles", :completed => "2013/07/13")
  u.exercises << kayak

  run = Exercise.create(:activity => "run", :value => 8.2, :units => "miles", :completed => "2013/07/14")
  u.exercises << run
  bike = Exercise.create(:activity => "bike", :value => 5.5, :units => "miles", :completed => "2013/07/14")
  u.exercises << bike


  swim = Exercise.create(:activity => "swim", :value => 1.9, :units => "miles", :completed => "2013/07/15")
  u.exercises << swim
  kayak = Exercise.create(:activity => "kayak", :value => 5.1, :units => "miles", :completed => "2013/07/15")
  u.exercises << kayak

  run = Exercise.create(:activity => "run", :value => 3.2, :units => "miles", :completed => "2013/07/16")
  u.exercises << run
  bike = Exercise.create(:activity => "bike", :value => 40.5, :units => "miles", :completed => "2013/07/17")
  u.exercises << bike


  swim = Exercise.create(:activity => "swim", :value => 3.9, :units => "miles", :completed => "2013/07/17")
  u.exercises << swim
  kayak = Exercise.create(:activity => "kayak", :value => 10.1, :units => "miles", :completed => "2013/07/16")
  u.exercises << kayak


  @email_counter = @email_counter + 1
end