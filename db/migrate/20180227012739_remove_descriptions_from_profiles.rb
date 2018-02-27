class RemoveDescriptionsFromProfiles < ActiveRecord::Migration[5.1]
  def change
  	remove_column :profiles, :description
  	add_column :users, :description, :string
  	add_column :users, :facebook, :string
  	add_column :users, :linkedin, :string
  	add_column :users, :website, :string
  end
end
