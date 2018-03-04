class AddSlotIdToChat < ActiveRecord::Migration[5.1]
  def change
  	add_column :chats, :slot_id, :integer
  end
end
