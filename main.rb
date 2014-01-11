
require_relative 'school'

# for testing
require 'pry'


def students
  students = %w(Jordan Hongyu Yiyang Becky Emilie Laure Mike Praggya Janice Karen Libby Matt Prescott Jack Anna)
  my_class = School::Wdi.new(students)
end



def prompt_user(prompt)
  puts prompt
  gets.chomp
end


def add_picker
  my_class = students
  reply = prompt_user 'Would you like to run the seat picker generator?'
  if reply.downcase.index('y') != nil
    my_class.seat_picker
  end
end

def assign_seats
  my_class = students
  # binding.pry

  reply = prompt_user 'Are you the seat picker for this week?'
  if reply.downcase.index('y') != nil
    my_class.assign_seats
  else
    puts 'Well then you should mind your own business!'
    exit
  end
end


def yield_output(output)
  puts output
end

def yield_output_hash(hash)
  hash.each do |key, value|
    puts "For #{key}: #{value}"
  end
end

# Run functions
seat_picker = add_picker
yield_output seat_picker

seats = assign_seats
yield_output_hash seats
