class AddDirectionToVote < ActiveRecord::Migration[5.2]
  def change
    add_column :votes, :direction, :integer
  end
end
