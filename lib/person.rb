class Person
    attr_reader :name
    attr_accessor :happiness, :hygiene, :bank_account

  def initialize(name, bank_account= 25, hygiene= 8, happiness= 8)
    @name = name 
    @bank_account = bank_account
    @hygiene = hygiene
    @happiness = happiness
  end

  def hygiene
    @hygiene.clamp(0, 10)
  end

  def happiness
    @happiness.clamp(0, 10)
  end

  def clean?
    @hygiene > 7 ? true : false
  end
  
  def happy?
    @happiness > 7 ? true : false
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end


  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end




  def get_paid(bank_account)
    salary = 100
    self.bank_account += salary
    return "all about the benjamins"
end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{@name}. How are you?"
  end



  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -= 2
      friend.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
       self.happiness += 1
       friend.happiness += 1
       return "blah blah sun blah rain"
    else
        return "blah blah blah blah blah"
    end
  end

end

friend = Person.new("Penelope")

