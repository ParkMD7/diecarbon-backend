class RemoveFootprintFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :footprint, :integer
  end
end
