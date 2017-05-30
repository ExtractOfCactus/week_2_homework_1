class Library
  attr_accessor :books


  def initialize(books)
    @books = books
  end

  def all_books()
    return @books
  end

  def find_book_by_title(title)
    for book in @books
      return book if book[:title] == title
    end
    return nil
  end

end