# your code goes here
require "pry"
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
    
    # def clean?
    #     if hygiene > 10 
    #         @hygiene = 10 
    #     elsif hygiene < 1 
    #         @hygiene = 0
    #     else
    #         self.hygiene > 7 
    #     end
    # end

    # def happy?
    #     if happiness > 10 
    #         @happiness = 10 
    #     elsif happiness < 1 
    #         @happiness = 0
    #     else 
    #         self.happiness > 7
    #     end
    # end



    def happiness= happiness 
        if happiness > 10
            @happiness =     10
        elsif happiness < 1
            @happiness = 0
        else
            @happiness= happiness
        end
    end

    def hygiene= hygiene
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 1
            @hygiene = 0
        else
            @hygiene= hygiene
        end
    end

    def happy?
        self.happiness>7
    end

    def clean?
        self.hygiene>7
    end


    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end
    
    def call_friend friend
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation friend, topic
        case topic
        when 'politics'
            friend.happiness -=2
            self.happiness -=2
            "blah blah partisan blah lobbyist"
        when 'weather'
            friend.happiness +=1
            self.happiness +=1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end




person1 = Person.new("Daniel")
# puts person1.inspect
person1.hygiene = -100
person1.happiness = 100
person1.clean?
person1.happy?
person1.get_paid(10)
puts person1.happiness
puts person1.hygiene

friend = Person.new("Moses")
puts person1.call_friend(friend)



