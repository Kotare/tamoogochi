require 'spec_helper'
require_relative './../app/models/list'

describe 'List' do
  let (:list) {List.create({description: Faker::Hacker.say_something_smart,
    complete: false })}

  describe '#complete' do
    it 'marks a task as complete' do
      task.complete!
      expect(Task.find_by_id(task.id).complete).to be_truthy
    end
  end

  describe '#'


  Task.destroy_all
end
