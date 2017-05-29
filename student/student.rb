class CodeclanStudent
  # attr_accessor :name, :cohort


  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def student_name()
    return @name
  end

  def student_cohort()
    return @cohort
  end

  def set_student_name(new_name)
    @name = new_name
  end

  def set_student_cohort(new_cohort)
    @cohort = new_cohort
  end

  def speak()
    return "I can talk!"
  end

  def favourite_language(lang)
    return "I love #{lang}"
  end
end