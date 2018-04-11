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
    books << title
    books << date
    # require "pry"; binding.pry
  end



end
