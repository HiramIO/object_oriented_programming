class Person
    def initialize(name)
        @name = name
    end
end

class Student < Person
    def initialize(name)
        super(name)
    end
    def learn
    end
end

class Instructor < Person
    def initialize(name)
        super(name)
    end
    def teach
    end
end
