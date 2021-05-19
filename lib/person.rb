# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene

    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness_index)
        @happiness = happiness_index
        if @happiness > 10
            @happiness = 10
        end

        if happiness < 0
            @happiness = 0
        end
    end

    def hygiene=(hygiene_index)
        @hygiene = hygiene_index
        if @hygiene > 10
            @hygiene = 10
        end

        if @hygiene < 0
            @hygiene = 0
        end
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        res = "blah blah blah blah blah"
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            res = "blah blah partisan blah lobbyist"
        end

        if topic == "weather"
            self.happiness += 1
            person.happiness += 1
            res = "blah blah sun blah rain"
        end
        res
    end
end

