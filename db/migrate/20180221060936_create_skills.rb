class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
    	t.boolean :skill_1
    	t.boolean :skill_2
    	t.boolean :skill_3
    	t.boolean :skill_4
    	t.boolean :skill_5
    	t.boolean :skill_6
    	t.boolean :skill_7
    	t.boolean :skill_8
    	t.boolean :skill_9
    	t.boolean :skill_10
    	t.boolean :skill_11
    	t.boolean :skill_12
    	t.boolean :skill_13
    	t.boolean :skill_14
    	t.boolean :skill_15

    	t.integer :user_id
      t.timestamps
    end
  end
end
