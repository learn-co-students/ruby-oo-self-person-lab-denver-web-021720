require 'pry'

class Person 

    attr_accessor :bank_account, :happiness, :hygiene 
    attr_reader :name

    def initialize name
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 

    def happiness=(n)
        @happiness = n
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end 

    def hygiene=(n)
        @hygiene = n
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
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

      def call_friend(receiver)
        self.happiness += 3
        receiver.happiness += 3
        "Hi #{receiver.name}! It's #{self.name}. How are you?"
      end 

      def start_conversation(stranger, topic)
        if topic == "politics"
            self.happiness -= 2 
            stranger.happiness -= 2
            return 'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            self.happiness += 1
            stranger.happiness += 1
            return 'blah blah sun blah rain'
        else 
            'blah blah blah blah blah'
        end 
      end 
end 