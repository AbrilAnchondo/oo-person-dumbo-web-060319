# your code goes here
require "pry"

class Person

    attr_writer :bank_account 
    attr_reader :name, :happiness, :hygiene, :bank_account

    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8 
        @bank_account = 25
    end

    

    def happiness=(index)
        if index > 10
            @happiness = 10
        elsif
            index < 0 
            @happiness = 0
        else
            @happiness = index
        end

    end

    def hygiene=(index)
        if index > 10
            @hygiene = 10
        elsif
            index < 0 
            @hygiene = 0
        else
            @hygiene = index
        end
    end

    def happy?
        if happiness > 7
            true
        else
            false
        end
    end   

    def clean?
        if hygiene > 7
            true
        else
            false
        end    
        
    end

    def get_paid(salary)
          @bank_account = @bank_account + salary
      "all about the benjamins"
    end

    def take_bath
     new_hygiene = @hygiene + 4
     self.hygiene=(new_hygiene)
     "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        dirty_person = @hygiene - 3 
        self.hygiene=(dirty_person)
        happier_person = @happiness + 2
        self.happiness=(happier_person)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
       self.happiness=(self.happiness + 3)
       friend.happiness=(friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
       if topic == "politics"
            self.happiness=(self.happiness - 2)
            person.happiness=(person.happiness - 2)
            "blah blah partisan blah lobbyist"
       elsif topic == "weather" 
            self.happiness=(self.happiness + 1)
            person.happiness=(person.happiness + 1)
            'blah blah sun blah rain'
       else
            'blah blah blah blah blah'

       end
        

end



    
end    


    
    
    
