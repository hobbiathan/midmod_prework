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

    require 'pry'; binding.pry

    expect(term.list_courses).to eq([course_two])

  end



end
