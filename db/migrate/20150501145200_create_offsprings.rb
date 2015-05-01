require_relative '../../config/application'

class CreateOffsprings < ActiveRecord::Migration
  def change
    create_table :offsprings do |t|
      t.string :species
      t.timestamps null: false
      t.belongs_to :cow, index: true
    end
  end
end
