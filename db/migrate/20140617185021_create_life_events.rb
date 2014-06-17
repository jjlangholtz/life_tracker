class CreateLifeEvents < ActiveRecord::Migration
  def change
    create_table :life_events do |t|
      t.string :title
      t.integer :year
      t.string :description

      t.timestamps
    end
  end
end
