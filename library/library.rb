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

  def change_book_details(title, student_name, date)
    for book in @books
      if book[:title] == title
        book[:rental_details][:student_name] = student_name if 
        book[:rental_details][:date]
        return book
      end
    end
    # rental_details_by_title(title)[:student_name] = student_name
    # rental_details_by_title(title)[:date] = date
  
  end
  
end