class RenameListToBook < ActiveRecord::Migration[5.2]
  def change
    rename_table :lists, :books
  end
end
