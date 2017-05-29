require('minitest/autorun')
require_relative('../student.rb')

class TestStudent < Minitest::Test

  def setup
    @codeclan_student = CodeclanStudent.new("Vicky", 13)
  end

  def test_student_name
    assert_equal("Vicky", @codeclan_student.student_name())
  end

  def test_student_cohort
    assert_equal(13, @codeclan_student.student_cohort)
  end

  def test_set_student_name
    @codeclan_student.set_student_name("Faisal")
    assert_equal("Faisal", @codeclan_student.student_name)
  end

  def test_set_student_cohort
    @codeclan_student.set_student_cohort(14)
    assert_equal(14, @codeclan_student.student_cohort)
  end

  def test_speak
    assert_equal("I can talk!", @codeclan_student.speak)
  end

  def test_favourite_language
    assert_equal("I love Ruby", @codeclan_student.favourite_language("Ruby"))
  end
end