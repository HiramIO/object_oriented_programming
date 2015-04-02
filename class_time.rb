class Person
    def initialize(name)
        @name = name
    end
    def name
        puts "Hi, my name is #{@name}"
    end
end

class Student < Person
    def initialize(name)
        super(name)
    end
    def learn
        puts "I get it!"
    end
end

class Instructor < Person
    def initialize(name)
        super(name)
    end
    def teach
        puts "Everything in Ruby is an Object!"
    end
end

christina = Student.new("Christina")
christina.name

chris = Instructor.new("Chris")
chris.name

chris.teach
christina.learn
christina.teach
#Christina does not have access to the teach method, because she did not inherit it from Person, and it is local to Instructor.