class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.integer :duration
      t.integer :FEZ
      t.integer :SEZ

      t.timestamps
    end
  end
end
