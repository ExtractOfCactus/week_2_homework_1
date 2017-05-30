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

  def rental_details_by_title(title)
    return find_book_by_title(title)[:rental_details]
  end

  def add_new_book(title)
    new_book = {
      title: title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    return @books.push(new_book)
  end


end