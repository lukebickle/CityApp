class CreateWickers < ActiveRecord::Migration
  def change
    create_table :wickers do |t|
      t.string :name
      t.integer :location

      t.timestamps
    end
  end
end
