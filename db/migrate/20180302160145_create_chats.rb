class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
    	t.integer :slot_creator_id
    	t.integer :worker_id

      t.timestamps
    end
  end
end
