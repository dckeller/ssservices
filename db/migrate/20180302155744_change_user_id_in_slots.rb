class ChangeUserIdInSlots < ActiveRecord::Migration[5.1]
  def change
  	rename_column :slots, :user_id, :slot_creator_id
  end
end
