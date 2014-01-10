class WebDevelop < Human
  attr_accessor :responsible, :confidence, :humility, :balance

  def initialize
    @responsible = false
    @confidence = false
    @humility = false
    @balance = false
  end

  def collaborate(people)
  end

  def transform(ideas)
    reality = self + ideas
    return reality
  end

end


#instantiate web developer student
Student = WebDeveloper.new

# constantly learning
while student.awake?
  student.learn!
end

