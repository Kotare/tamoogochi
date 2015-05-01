
class Offspring < ActiveRecord::Base
  belongs_to :cow

  def inititalize(species)
    @species = species
  end
end
