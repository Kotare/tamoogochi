require_relative '../../config/application'

class CreateCows < ActiveRecord::Migration
  def change
    create_table :cows do |t|
      t.datetime :fed_at
      t.datetime :milked_at
      t.timestamps null: false
    end
  end
end
