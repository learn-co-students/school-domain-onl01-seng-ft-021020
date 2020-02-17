class School 
  
  
  def initialize(name)
    @roster={}
  end 
  
  def roster 
    @roster
  end

  def add_student(name, grade)
    @grade = grade
    if @roster.keys.include?(grade)
      @roster[@grade] << name
    else 
      @roster[@grade] = []
      @roster[@grade] << name
      puts @roster
    end 
  end 
  
  def grade (number)
    @roster.each do |grades, names|
      if grades == number
        return names
      end 
    end
  end 
  
  def sort 
  # @roster[@grade].sort
  new_array= []
  @roster.each do |grade, array|
    array.sort!
 end 
  end 
  
  
  
end 

