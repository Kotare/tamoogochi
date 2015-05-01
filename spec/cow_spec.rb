require_relative 'spec_helper'
require_relative './../app/models/cow'
require_relative './../app/models/offspring'

describe 'Cow' do

  describe '#procreate' do
    it 'returns a random array of animals' do
      expect(Cow.procreate).to be_an_instance_of(Array)
    end
  end

  describe '#procreate' do
    it 'returns an array with a length equal to or greater than 2' do
      expect(Cow.procreate.length).to be >= (2)
    end
  end

  describe '#procreate' do
    it 'returns an array with a length equal to or less than 4' do
      expect(Cow.procreate.length).to be <= (4)
    end
  end

  describe '#check' do
    it 'returns a hash' do
      cow = Cow.new
      check_return = cow.check
      expect(check_return).to be_an_instance_of(Hash)
    end
  end

  Offspring.destroy_all
end





#   describe '#complete' do
#     it 'marks a task as complete' do
#       task.complete!
#       expect(Task.find_by_id(task.id).complete).to be_truthy
#     end
#   end

#   describe '#'


#   Task.destroy_all
# end
