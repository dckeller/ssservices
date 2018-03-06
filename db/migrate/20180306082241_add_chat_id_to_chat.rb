class AddChatIdToChat < ActiveRecord::Migration[5.1]
  def change
  	add_column :chats, :chat_id, :integer
  end
end
