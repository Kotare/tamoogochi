require_relative '../../config/application'

class cowProcreated_at < ActiveRecord::Migration
  def change
    add_column :cows, :procreated_at, :datetime
    add_column :cows, :gave_birth_at, :datetime
  end
end
