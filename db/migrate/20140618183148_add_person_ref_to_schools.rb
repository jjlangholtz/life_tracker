class AddPersonRefToSchools < ActiveRecord::Migration
  def change
    add_reference :schools, :person, index: true
  end
end
