# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
Librarybook.create(title: "Rise of Dragone", status: 'Loan' , status_date: Time.now())


Librarybook.create(title: "Art of Motorcycle maintenance, An Inquiry into values", status: 'Available' , status_date: Time.now())


Librarybook.create(title: "One Hundred years of solitude", status: 'Loan' , status_date: Time.now())



