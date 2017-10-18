# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

household_category = Category.where(name: 'household').first_or_create(name: 'household')
food_category = Category.where(name: 'food').first_or_create(name: 'food')
services_category = Category.where(name: 'services').first_or_create(name: 'services')
electronics_category = Category.where(name: 'electronics').first_or_create(name: 'electronics')
collectibles_category = Category.where(name: 'collectibles').first_or_create(name: 'collectibles')
events_category = Category.where(name: 'events').first_or_create(name: 'events')


Subcategory.where(name: 'kitchen', category_id: household_category.id).first_or_create(name: 'kitchen', category_id: household_category.id)
Subcategory.where(name: 'outdoor', category_id: household_category.id).first_or_create(name: 'outdoor', category_id: household_category.id)
Subcategory.where(name: 'furniture', category_id: household_category.id).first_or_create(name: 'furniture', category_id: household_category.id)