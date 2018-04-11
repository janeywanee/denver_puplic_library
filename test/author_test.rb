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

  def test_it_starts_empty
    assert_equal [], charlotte_bronte.books
  end
  
  def test_it_can_add_a_book
    charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    assert_equal "Jane Eyre", charlotte_bronte.add_book("Jane Eyre", "October 16, 1847").first.title
  end

  def test_it_can_add_authors_first_and_last_name
    charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    books = Book.new({author_first_name: "charlotte", author_last_name: "bonte"})

    assert_equal ["Jane Eyre", "October 16, 1847"], charlotte_bronte.books
  end

  def test_it_can_add_another_book_
    assert_equal "Villette", charlotte_bronte.add_book("Villette", "1853").first.title
  end

  def test_it_has_two_books
   jane_eyre = charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
   villette  = charlotte_bronte.add_book("Villette", "1853")

   assert_equal "Jane Eyre", jane_eyre.first.title
   assert_equal "Villette", villette.last.title
  end
end
