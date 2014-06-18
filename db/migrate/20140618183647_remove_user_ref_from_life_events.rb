class RemoveUserRefFromLifeEvents < ActiveRecord::Migration
  def change
    remove_reference :life_events, :user, index: true
  end
end
