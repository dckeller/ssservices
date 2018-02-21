class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
    	t.string :skill_1
    	t.string :skill_2
    	t.string :skill_3
    	t.string :skill_4
    	t.string :skill_5
    	t.string :skill_6
    	t.string :skill_7
    	t.string :skill_8
    	t.string :skill_9
    	t.string :skill_10
    	t.string :skill_11
    	t.string :skill_12
    	t.string :skill_13
    	t.string :skill_14
    	t.string :skill_15

    	t.integer :user_id
      t.timestamps
    end
  end
end
