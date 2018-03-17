class DropProductsTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :games
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end