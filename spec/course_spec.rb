require './lib/course'
require './lib/student'

RSpec.describe 'Course' do
  it 'is an instance of Course' do
    course = Course.new("Calculus", 2)
    expect(course).to be_instance_of(Course)
  end

  it 'can read a Course name' do
    course = Course.new("Calculus", 2)
    expect(course.name).to eq("Calculus")
  end

  it 'can read a Course capacity' do
    course = Course.new("Calculus", 2)
    expect(course.capacity).to eq(2)
  end

  it 'initializes empty students array on instance' do
    course = Course.new("Calculus", 2)
    expect(course.students).to eq([])
  end
  # I should've written the enroll before full?

  it 'can push student object to students array' do
    course = Course.new("Calculus", 2)
    student_1 = Student.new({name: "Morgan", age: 21})
    student_2 = Student.new({name: "Jordan", age: 29})

    course.enroll(student_1)
    course.enroll(student_2)

    expected_array = [student_1, student_2]
    expect(course.students).to eq(expected_array)
  end

  it 'can check capacity with full? (empty)' do
    course = Course.new("Calculus", 2)
    expect(course.full?).to be false
  end

  it 'can check capacity with full? (full)' do
    course = Course.new("Calculus", 2)
    student_1 = Student.new({name: "Morgan", age: 21})
    student_2 = Student.new({name: "Jordan", age: 29})

    course.enroll(student_1)
    course.enroll(student_2)

    expect(course.full?).to be true
  end

  it 'can call student names from a given course' do
    course = Course.new("Calculus", 2)
    student_1 = Student.new({name: "Morgan", age: 21})
    student_2 = Student.new({name: "Jordan", age: 29})

    course.enroll(student_1)
    course.enroll(student_2)

    expected_array = [student_1.name, student_2.name]
    expect(course.call_students).to eq(expected_array)
  end

end
