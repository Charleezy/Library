# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# User example: u = User.create(:email => "user@name.com", :password => 'password', :password_confirmation => 'password')

au = User.create(:admin => true, :name => "Charlie")
u = User.create(:admin => false, :name => "NUser")

little_prince = Book.create(name: 'The Little Prince', isbn: 122421312, status: "222")
tiger_eyes = Book.create(name: 'Tiger Eyes', isbn: 12353908230, status: "112")
the_fountainhead = Book.create(name: 'The Fountainhead', isbn: 12421232144, status: "111")