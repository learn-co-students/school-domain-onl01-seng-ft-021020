class School
   attr_reader :name, :roster
   
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if !@roster.key?(grade)
            @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_hash = {}
        @roster.each do |grade, name_array|
            sorted_hash[grade] = name_array.sort
        end
        sorted_hash
    end
end