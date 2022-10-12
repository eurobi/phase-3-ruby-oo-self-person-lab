class Person
    attr_reader :name
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness
        @happiness
    end
    def hygiene
        @hygiene
    end

    def happiness=(value)
        if value >= 0 && value <= 10
            @happiness = value
        elsif value < 0
            @happiness = 0
        elsif value > 10
            @happiness = 10
        end
    end

    def hygiene=(value)
        if value >= 0 && value <= 10
            @hygiene = value
        elsif value < 0
            @hygiene = 0
        elsif value > 10
            @hygiene = 10
        end
    end

    def happy?
        self.happiness > 7
    end
    def clean?
        self.hygiene > 7
    end
    def get_paid(amt)
        self.bank_account += amt
        "all about the benjamins"
    end
    def take_bath
        self.hygiene=(self.hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene=(self.hygiene - 3)
        self.happiness=(self.happiness + 2)
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness=(self.happiness + 3)
        friend.happiness=(friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness=(self.happiness - 2)
            friend.happiness=(friend.happiness - 2)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=(self.happiness + 1)
            friend.happiness=(friend.happiness + 1)
            return "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end




            
    
end
