class Person 
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end

    def happiness=(number)
        @happiness = number   
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end

    def hygiene=(number)
        @hygiene = number
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
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
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        [friend,self].each {|f| f.happiness += 3} #increases self happiness by 3; why does this work?!
            "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        objects = [self, person]
        if topic == "politics"
          objects.each { |o| o.happiness -= 2}
          first, second = ["partisan", "lobbyist"]
        elsif topic == "weather"
          objects.each { |o| o.happiness += 1}
          first, second = ["sun", "rain"]
        end
        first ||= "blah" #if first is nil, assign it the value of "blah"
        second ||= "blah"
        base_string = "blah blah #{first} blah #{second}"
      end
end