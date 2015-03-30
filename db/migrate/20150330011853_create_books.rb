class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|

      t.timestamps
      t.string :name
      t.integer :isbn
      t.string :status = "free"
    end
  end
end
