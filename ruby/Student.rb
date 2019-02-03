class Student
  @@roll_no = 0
  attr_writer :name
  def initialize
    @name
    @@roll_no += 1
    @obtained_marks = Array.new
    @max_marks = 0
    @no_of_subjects = 0
  end

  def setMarks
    puts "Enter no of subjects: "
    @no_of_subjects=gets.chomp.to_i
    puts "Enter the marks: "
    (1..@no_of_subjects).each{
      @obtained_marks.push( gets.chomp.to_f) 
    }
    print "#{@obtained_marks}"
    puts "Enter max marks per subject: "
    @max_marks = gets.chomp.to_i * @no_of_subjects

  end

  def getPercentage
    puts @obtained_marks
    sum_of_obtained_marks = @obtained_marks.inject(:+)
    (sum_of_obtained_marks*100) /@max_marks
  end

  def getAverage
    sum_of_obtained_marks = @obtained_marks.inject(:+)
    sum_of_obtained_marks/@no_of_subjects
  end

  def getResult
    setMarks()
    puts "Roll No: #{@@roll_no} Name: #{@name}"
    puts "Average is #{getAverage()}"
    puts "Percentage is #{getPercentage()}"
  end
end

first_student = Student.new
puts "Enter Name of Student: "
first_student.name = gets
first_student.getResult