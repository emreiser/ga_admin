require 'pry'

module School

  class WebDeveloper # < Human
    attr_accessor :responsible, :confidence, :humility, :balance, :name, :age, :gender, :awake

    def initialize(name, gender, age)
      @responsible = false
      @confidence = false
      @humility = false
      @balance = false
      @name = name
      @gender = gender
      @age = age
      @awake = false
    end

    def collaborate(people)
    end

    def transform(ideas)
      'reality = self and ideas'
    end

    def ga_wdi
      @responsible = true
      @confidence = true
      @humility = true
      @balance = true
    end

    def learn
      @awake = true
      while @awake == true
        puts 'learning...learning...head is hurting... learning... need to sleep...'
        binding.pry
      end
    end

  end

end

################# Main Functions #########################

def prompt_user(prompt)
  puts prompt
  gets.chomp
end

def create_student(name, age, gender)
  School::WebDeveloper.new(name, age, gender)
end

def yield_output(output)
  puts output
end


###### starter function
def go_student_go

  name = prompt_user 'What is your name?'
  age = prompt_user('How old are you?').to_i
  gender = prompt_user 'Are you male or female?'

  student = create_student(name, age, gender)

  output = "Hi. I am a GA-WDI student whose name is #{student.name}. I am #{age} years old and am a #{gender}"

  yield_output(output)

  current_status = "Currently, I am... responsible: #{student.responsible}, confident: #{student.confidence}, humble: #{student.humility}, and life balance: #{student.balance}."

  yield_output(current_status)

  reply = prompt_user 'Would you like to transform??'

  student.ga_wdi if reply.downcase.index('y') != nil

  new_status = "Now, I am... responsible: #{student.responsible}, confident: #{student.confidence}, humble: #{student.humility}, and life balance: #{student.balance}."

  yield_output(new_status)

  reply = prompt_user 'OK. Ready to learn?'

  student.learn if reply.downcase.index('y') != nil

  end_message = 'Way to go. Keep on going!!'

  yield_output(end_message)

end

go_student_go
