class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def happiness=(happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end        

    def take_bath
        @hygiene = @hygiene + 4
        self.hygiene=(@hygiene)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def get_paid(income)
        @bank_account = @bank_account + income
        "all about the benjamins"
    end

    def work_out
        @happiness= @happiness + 2
        @hygiene= @hygiene - 3
        self.hygiene=(@hygiene)
        self.happiness=(@happiness)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        @happiness=@happiness + 3
        friend.happiness= friend.happiness + 3 
        self.happiness=(@happiness)
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end 

    def start_conversation(person, topic)
        if topic=="politics"
            @happiness=@happiness-2
            self.happiness=(@happiness)
            person.happiness= person.happiness - 2
            "blah blah partisan blah lobbyist"

        elsif topic=="weather"
            @happiness=@happiness+1
            self.happiness=(@happiness)
            person.happiness= person.happiness + 1 
            "blah blah sun blah rain"

        else
            "blah blah blah blah blah"
        end

    end

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
end