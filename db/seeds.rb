# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

PublicationType.create name: "Gratis", publication_days: 30, images_count: 3, videos_count: 0, cost: 0, priority_on_search: false, highlight: false
PublicationType.create name: "Básica", publication_days: 90, images_count: 6, videos_count: 1, cost: 50, priority_on_search: true, highlight: false
PublicationType.create name: "Premiun", publication_days: 365, images_count: 12, videos_count: 3, cost: 99, priority_on_search: true, highlight: true