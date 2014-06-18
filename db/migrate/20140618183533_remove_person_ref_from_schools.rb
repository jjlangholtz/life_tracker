class RemovePersonRefFromSchools < ActiveRecord::Migration
  def change
    remove_reference :schools, :user, index: true
  end
end
