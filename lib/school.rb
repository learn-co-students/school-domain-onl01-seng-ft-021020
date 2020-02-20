require 'pry'
class School 
  
  attr_reader :roster
  
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  
  def add_student(name, grade)
    if @roster[grade] #if hash key exists then do the work underneath which is pushing name string 
      @roster[grade] << name 
    else 
      @roster[grade] = [] #the key doesn't exist yet, so create the value of empty array and then do the work on the next line which is shoveling the name into newly created array 
       @roster[grade] << name
    end 
  end   
  def grade(grade)
    @roster[grade]
  end   
  
  def sort
  @roster.each do |grade, name|
  @roster[grade] = name.sort
  end   
end 
end 