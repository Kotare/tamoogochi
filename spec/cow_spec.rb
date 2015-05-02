require_relative 'spec_helper'
require_relative './../app/models/cow'
require_relative './../app/models/offspring'

describe 'Cow' do
  let(:cow) {Cow.create({fed_at:Time.now, milked_at:Time.now})}
  subject {cow}

  it { is_expected.to respond_to(:feed) }
  it { is_expected.to respond_to(:procreate) }
  it { is_expected.to respond_to(:check) }
  it { is_expected.to respond_to(:milked) }
  it { is_expected.to respond_to(:milkable?) }

  describe '#procreate return' do
    subject { cow.procreate }

    it { is_expected.to be_a_kind_of(Array) }
    it { expect(subject.length).to be_between(2,4).inclusive }
    it { expect(subject.first).to be_a_kind_of(Offspring) }
  end

  describe '#check return' do
    subject { cow.check }

    it { is_expected.to be_a_kind_of(Hash) }
    it { expect(subject.keys).to contain_exactly(:hunger, :age) }
    it { expect(subject.values).not_to include(nil) }
  end

  Offspring.destroy_all
end
