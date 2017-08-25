# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
authors = Author.create([
{first_name: 'mariam', last_name: 'ahmed'},
{first_name: 'eman', last_name: 'ali'},
{first_name: 'fatma', last_name: 'mohammed'}
])
Book.create(full_name: 'Ruby on Rails').authors.create([
{book_id: 1, first_name: 'hager', last_name: 'khaled'},
{book_id: 2, first_name: 'hend', last_name: 'elhawary'},
{book_id: 1, first_name: 'saleh', last_name: 'nazeeh'}
])
Book.create(full_name: 'Rails first edition').authors.create([
{book_id: 1, first_name: 'ali', last_name: 'ahmed'},
{book_id: 2, first_name: 'shreen', last_name: 'adel'},
{book_id: 1, first_name: 'mona', last_name: 'mohammed'}
])
