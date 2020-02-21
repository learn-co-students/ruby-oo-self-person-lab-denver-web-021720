class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8 
    end

    def happiness=(happiness)
        @happiness = happiness > 10 ? 10 : happiness < 0 ? 0 : happiness
    end

    def hygiene=(hygiene) 
        @hygiene = hygiene > 10 ? 10 : hygiene < 0 ? 0 : hygiene
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary_amount)
        @bank_account += salary_amount
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

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(conv_person, topic)
        if topic == "politics"
            self.happiness -= 2
            conv_person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            conv_person.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end