require './lib/student'

RSpec.describe 'Student' do
  it 'is an instance of student' do
    student = Student.new()
    expect(student).to be_instance_of(Student)
  end



end
