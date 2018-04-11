class Author
  attr_reader :first_name,
              :last_name,
              :books

  def initialize(hash)
    @first_name = hash = [:fisrt_name]
    @last_name = hash = [:last_name]
    @books = []
  end

  def add_book(title, date)
    book_list = {
      author_first_name: first_name,
      author_last_name: last_name,
      publication_date: date,
      title: title}
    @books << Book.new(book_list)
  end
end
