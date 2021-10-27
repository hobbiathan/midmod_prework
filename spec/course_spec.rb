require './lib/course'
require './lib/student'

RSpec.describe 'Course' do
  it 'is an instance of Course' do
    course = Course.new()
    expect(course).to be_instance_of(Course)
  end

end
