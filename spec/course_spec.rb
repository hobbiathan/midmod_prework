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

end
