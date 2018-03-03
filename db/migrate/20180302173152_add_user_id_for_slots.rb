class AddUserIdForSlots < ActiveRecord::Migration[5.1]
  def change
  	add_column :slots, :user_id, :integer
  end
end
