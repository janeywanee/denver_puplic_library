require './test/test_helper'
require './lib/author'
require './lib/book'

class AuthorTest < Minitest::Test
  attr_reader :charlotte_bronte
  def setup
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end

  def test_it_exists
    assert_instance_of Author, charlotte_bronte
  end

  def test_it_has_a_book
    assert_equal [], charlotte_bronte.books
  end

  def test_it_can_add_a_book
    charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    assert_equal ["Jane Eyre", "October 16, 1847"], charlotte_bronte.books
  end

  
end









#
# > charlotte_bronte.books
# # => [#<Book:0x007f98a9c6ace8 @author_first_name="Charlotte", @author_last_name="Bronte", @publication_date="10/16/1847", @title="Jane Eyre">]
#
# > charlotte_bronte.add_book("Villette", "1853")
# # => #<Book:0x007f98a9c6ace8 @author_first_name="Charlotte", @author_last_name="Bronte", @publication_date="1847", @title="Villette">
#
# > charlotte_bronte.books
# # => [#<Book:0x007f98a9c6ace8 @author_first_name="Charlotte", @author_last_name="Bronte", @publication_date="10/16/1847", @title="Jane Eyre">, #<Book:0x007f98a9c6add3 @author_first_name="Charlotte", @author_last_name="Bronte", @publication_date="1847", @title="Villette">]
