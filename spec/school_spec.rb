require 'spec_helper'
require_relative '../school.rb'

describe School::Wdi do
  describe '#seat_picker' do
    it 'returns 1 random student from a students array' do
      students = %w{Jordan Hongyu Yiyang Becky Emilie Laure Mike Praggya Janice Karen Libby Matt Prescott Jack Anna}
      my_class = School::Wdi.new(students)
      expect(my_class.seat_picker.split.count).to eq 1
    end
  end

  describe '#assign_seats' do
    it 'returns a hash' do
      students = %w{Jordan Hongyu Yiyang Becky Emilie Laure Mike Praggya Janice Karen Libby Matt Prescott Jack Anna}
      my_class = School::Wdi.new(students)
      expect(my_class.assign_seats.class).to eq Hash
    end

    it 'returns a hash with # of keys eq to # of students / 2' do
      students = %w{Jordan Hongyu Yiyang Becky Emilie Laure Mike Praggya Janice Karen Libby Matt Prescott Jack Anna}
      my_class = School::Wdi.new(students)
      expect(my_class.assign_seats.values.count).to eq 8
    end

  end
end
