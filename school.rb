


module School

  class Wdi
    attr_accessor :students, :seats, :assigned_seats

    def initialize(students)
      @students = students
      @seats = %w(Table1 Table2 Table3 Table4 Table5 Table6 Table7 Table8)
      @assigned_seats = {}
    end

    def seat_picker
      @students.shuffle!
      @students[0]
    end


    def assign_seats
      @students.shuffle!
      @seats.each { |seat| @assigned_seats[seat] = @students.slice!(0,2)}
      @assigned_seats
    end
  end


end
