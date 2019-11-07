class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.timestamps
      t.string :title
      t.string :body
    end
  end
end
