class RemoveSlotIdFromChat < ActiveRecord::Migration[5.1]
  def change
  	remove_column :chats, :slot_id, :integer
  end
end
