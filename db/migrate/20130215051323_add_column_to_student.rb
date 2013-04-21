class AddColumnToStudent < ActiveRecord::Migration
  def self.up
    add_column :students, :intake_id, :integer
  end

  def self.down
    remove_column :students, :intake_id
  end
end
