require('minitest/autorun')
require_relative('../library.rb')

class TestLibrary < Minitest::Test

  def setup
    @library = Library.new([
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
    
  end


end
