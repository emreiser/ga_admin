
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
  names_array = []
  hash.each do |key, value|
    names_array << value
  end
  names_array
end

# Run functions
seat_picker = add_picker
yield_output seat_picker

seats = assign_seats
names_array = yield_output_hash(seats)
names_array = names_array.map do |group|
  seat_group = group.join(' & ')
  while seat_group.length < 17
    seat_group = "#{seat_group} "
  end
  seat_group
end

#If a name group is < 17 characters add space until they are 17 characters long


puts ""
puts ""
puts "                               [PROJECTOR SCREEN]          "
puts ""
puts "    #{names_array[0]}          |   PROJECTOR   |          #{names_array[1]}"
puts ""
puts "    #{names_array[2]}          #{names_array[3]}          #{names_array[4]}"
puts ""
puts "    #{names_array[5]}          #{names_array[6]}          #{names_array[7]}"
puts ""
puts ""
