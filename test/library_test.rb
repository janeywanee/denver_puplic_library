require './test/test_helper'
# require './lib/library'
# require './lib/author'

class LibraryTest < Minitest::Test


end

# > charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
# > jane_eyre = charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
# > villette  = charlotte_bronte.add_book("Villette", "1853")
#
# > harper_lee  = Author.new({first_name: "Harper", last_name: "Lee"})
# > mockingbird = harper_lee.add_book("To Kill a Mockingbird", "July 11, 1960")
#
# > dpl = Library.new
# # => #<Library:0x007fb41101f2f8>
#
# > dpl.books
# # => []
#
# > dpl.add_to_collection(jane_eyre)
# > dpl.books
# # => [#<Book:0x007f98a9c6ace8...>]
#
# > dpl.add_to_collection(mockingbird)
# > dpl.add_to_collection(villette)
# > dpl.books
# # => [#<Book:0x007f98a9c6ace8...>, #<Book:0x007fb410e8e1f0...>, #<Book:0x007fb410ea56e8...>]
