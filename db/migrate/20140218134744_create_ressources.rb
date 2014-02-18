class CreateRessources < ActiveRecord::Migration
  def change
    create_table :ressources do |t|
      t.string :name
      t.integer :capacity

      t.timestamps
    end
  end
end
