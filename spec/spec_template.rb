require_relative 'spec_helper'
require_relative './../app/models/cow'
require_relative './../app/models/offspring'

describe 'Cow' do
  describe '#procreate' do
    it 'returns a random array of animals' do
      expect(cow.procreate).to be_an_instance_of(Array)
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
