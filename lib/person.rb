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