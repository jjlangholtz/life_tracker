class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.integer :beginning_year
      t.integer :ending_year

      t.timestamps
    end
  end
end
