require('minitest/autorun')
require_relative('../library.rb')

class TestLibrary < Minitest::Test

  def setup
    @library = Library.new(@books = [
      {
        title: "book1",
        rental_details: {
          student_name: "Chuck",
          date: "06/11/2016"
        }
      },
      {
        title: "book2",
        rental_details: {
          student_name: "Dave",
          date: "20/12/2016"
        }
      },
      {
        title: "book3",
        rental_details: {
          student_name: "Mike",
          date: "30/04/2017"
        }
      },
    ])

  end

  def test_all_books
    assert_equal(@books, @library.all_books())
  end

  def test_find_book_by_title
    result = @library.find_book_by_title("book2")
    assert_equal(@books[1], result)
  end

  def test_rental_details_by_title
    result = @library.rental_details_by_title("book3")
    assert_equal(@books[2][:rental_details], result)
  end

  def test_add_new_book
    assert_equal(4, @library.add_new_book("book4").length)
  end

end
