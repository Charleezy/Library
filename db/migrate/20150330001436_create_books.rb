class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|

      t.timestamps
	  t.string :isbn
	  t.string :name
    end
  end
end
