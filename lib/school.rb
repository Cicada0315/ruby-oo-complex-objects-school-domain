# code here!
class School
    attr_accessor :school_name
    def initialize(school_name)
        @school_name=school_name  
        @roster={}
    end
    

    def roster
        @roster
    end

    def add_student(name, grade)
        #if @roster[grade]
        if @roster.has_key?(grade)
            @roster[grade] << name
        else
            @roster[grade] = [name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        list={}
        @roster.each do |key, value|
            list[key]=value.sort
        end
        list
    end

end
 