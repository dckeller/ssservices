# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

i = 0
num = 280

while i < num do 

	# Thursdays
	puts Slot.create(date: DateTime.now + i, city: "Greater Salt Lake City", start_time: "17:00:00", end_time: "20:00:00", slot_creator_id: 1)
	
	# Friday's
	puts Slot.create(date: DateTime.now + (i + 1), city: "Greater Salt Lake City", start_time: "17:00:00", end_time: "20:00:00", slot_creator_id: 1)
	
	# Saturday's
	puts Slot.create(date: DateTime.now + (i + 2), city: "Greater Salt Lake City", start_time: "06:00:00", end_time: "18:00:00", slot_creator_id: 1)

	# Sunday's
	puts Slot.create(date: DateTime.now + (i + 3), city: "Greater Salt Lake City", start_time: "08:00:00", end_time: "12:00:00", slot_creator_id: 1)	
	
	# Monday's
	puts Slot.create(date: DateTime.now + (i + 4), city: "Greater Salt Lake City", start_time: "17:00:00", end_time: "20:00:00", slot_creator_id: 1)
	
	# Tuesday's
	puts Slot.create(date: DateTime.now + (i + 5), city: "Greater Salt Lake City", start_time: "17:00:00", end_time: "20:00:00", slot_creator_id: 1)
	
	# Wednesday's
	puts Slot.create(date: DateTime.now + (i + 6), city: "Greater Salt Lake City", start_time: "17:00:00", end_time: "20:00:00", slot_creator_id: 1)

	i += 7
end 
	
