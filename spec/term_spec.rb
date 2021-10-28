require './lib/term'
require './lib/course'
require './lib/student'

RSpec.describe 'Term' do
  it 'is an instance of Turn' do
    term = Term.new("Winter 2018")
    expect(term).to be_instance_of(Term)
  end

  it 'can read Term name' do
    term = Term.new("Winter 2018")
    expect(term.name).to eq("Winter 2018")
  end

  it 'can initialize an empty array (courses)' do
    term = Term.new("Winter 2018")
    expect(term.courses).to eq([])
  end

  it 'can add courses to course array' do
    term = Term.new("Winter 2018")
    course_one = Course.new("Calculus", 2)
    course_two = Course.new("Molecular Biology", 3)
    expected_array = [course_one, course_two]

    term.add_course(course_one)
    term.add_course(course_two)

    expect(term.courses).to eq(expected_array)
  end

  it 'can return array of open courses' do
    term = Term.new("Winter 2018")

    student_one = Student.new({name: "Morgan", age: 21})
    student_two = Student.new({name: "Joe", age: 235135})


    course_one = Course.new("Calculus", 2)
    course_two = Course.new("Molecular Biology", 3)

    course_one.enroll(student_one)
    course_one.enroll(student_two)

    term.add_course(course_one)
    term.add_course(course_two)

    expect(term.list_courses).to eq([course_two])
  end

  it 'can return array of all students in a term' do

    term = Term.new("Winter 2018")

    student_one = Student.new({name: "Morgan", age: 21})
    student_two = Student.new({name: "Joe", age: 235135})

    student_three = Student.new({name: "blahl", age: 3})
    student_four = Student.new({name: "something", age: -1})



    course_one = Course.new("Calculus", 2)
    course_two = Course.new("Molecular Biology", 3)

    course_one.enroll(student_one)
    course_one.enroll(student_two)

    course_two.enroll(student_three)
    course_two.enroll(student_four)

    term.add_course(course_one)
    term.add_course(course_two)

    expected_array = [student_one.name, student_two.name, student_three.name, student_four.name]
    expect(term.students).to eq(expected_array)
  end

  # Not sure that really was going to do anything different

end
