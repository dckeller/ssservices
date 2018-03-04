class AddWorkerAndSlotIds < ActiveRecord::Migration[5.1]
  def change
  	add_column :messages, :worker_id, 				:integer
  	add_column :messages, :slot_creator_id, 	:integer
  end
end
