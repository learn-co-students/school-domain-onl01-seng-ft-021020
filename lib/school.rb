class School
  
  attr_reader :roster
  
  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name      
    end
  end
  
  def grade(grade_search)
    @roster.each do |grade, students|
      return students if grade_search == grade
    end
  end
  
  def sort
    @roster.each do |grade, students|
      students.sort!
    end
    @roster
  end
  
end