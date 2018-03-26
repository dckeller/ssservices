# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


0.upto(40) do |x|
	week = 0 

	Slot.create(date: DateTime.now + (week + x), city: "Greater Salt Lake City", start_time: "17:00:00", end_time: "20:00:00", slot_creator_id: 1)
	Slot.create(date: DateTime.now + (week + 1), city: "Greater Salt Lake City", start_time: "17:00:00", end_time: "20:00:00", slot_creator_id: 1)
	Slot.create(date: DateTime.now + (week + 2), city: "Greater Salt Lake City", start_time: "17:00:00", end_time: "20:00:00", slot_creator_id: 1)
	Slot.create(date: DateTime.now + (week + 3), city: "Greater Salt Lake City", start_time: "17:00:00", end_time: "20:00:00", slot_creator_id: 1)
	Slot.create(date: DateTime.now + (week + 4), city: "Greater Salt Lake City", start_time: "17:00:00", end_time: "20:00:00", slot_creator_id: 1)
	Slot.create(date: DateTime.now + (week + 5), city: "Greater Salt Lake City", start_time: "06:00:00", end_time: "18:00:00", slot_creator_id: 1)
	Slot.create(date: DateTime.now + (week + 6), city: "Greater Salt Lake City", start_time: "17:00:00", end_time: "20:00:00", slot_creator_id: 1)

	week += 7
end 