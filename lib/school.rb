# code here!

class School
  attr_accessor :roster
  attr_reader :name
  
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, student_grade)
    
    if @roster.key?(student_grade)
      @roster[student_grade] << student_name
    else
      @roster[student_grade] = []
      @roster[student_grade] << student_name
    end
  end
  
  def grade(number)
    
    if @roster.key?(number)
      @roster[number]
    end
    
  end
  
  def sort
    @roster.map do |key,value|
      @roster[key]= value.sort
    end
    
    @roster
  end
  
end