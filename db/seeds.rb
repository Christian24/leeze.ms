# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.create name: 'Radtour'
Category.create name: 'Mountainbiketour'
Category.create name: 'Radwandern'
pass = "SpartenKaufenGehen123"
admin = User.create email: 'administrator@example.com', password: pass,
                    password_confirmation: pass
admin.add_role :admin
puts "Admin password is #{pass}"