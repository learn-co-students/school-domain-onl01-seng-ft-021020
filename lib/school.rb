# code here!

class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def name
    @name
  end
  
  def add_student(student, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << student
    else
      @roster[grade] << student
    end
  end
  
  def roster
    @roster
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    hash = {}
    @roster.collect do |grade, students|
      @roster[grade] = students.sort
    end
    return @roster
  end
  
end
