my_office = {
	book_shelf: {
		beach_reads: ["The Girls", "Under the Harrow", "Dancing With the Tiger"],
		fiction: ["To Kill A Mockingbird", "His Mother's Son"],
		non_fiction: ["Webster's Dictionary", "Learn to Program", "The Well-Grounded Rubyist"]
	},
	desk: ["laptop", "printer", "stack of mail"],
	closet_stuff: [
		["black file cabinet", "white file cabinet"],
		["box of pictures", "box of tax returns"],
		["dusty exercise bike"]
	]
}

puts my_office

#Access "Learn to Program"
puts my_office[:book_shelf][:non_fiction][1]

#Remove "box of tax returns"
my_office[:closet_stuff][1].delete_at(1)
puts my_office

#All done!  Add cold beer to desk
my_office[:desk] << "cold beer"
puts my_office