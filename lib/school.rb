# code here!

class School
  attr_accessor :name, :roster
  
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if(@roster.key?(grade) == false)
      @roster[grade] = []
    end
    
    @roster[grade] << name
  end
  
  def grade(grade_number)
    @roster[grade_number]
  end
  
  def sort
    result = {}
    @roster = @roster.sort.to_h
    @roster.each do |key, value|
      result[key] = value.sort
      
    end
    
    @roster = result
    result
  end
end