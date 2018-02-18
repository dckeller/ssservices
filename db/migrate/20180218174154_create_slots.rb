class CreateSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :slots do |t|
    	t.datetime 	:date
    	t.string		:city
    	t.integer 	:contact
    	t.datetime 	:start_time
    	t.datetime 	:end_time
    	
    	t.integer 	:user_id
    	t.timestamps
    end
  end
end
