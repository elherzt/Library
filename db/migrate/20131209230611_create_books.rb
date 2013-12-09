class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :editorial
      t.string :isbn
      t.integer :year
      t.string  :pages
      t.timestamp
    end
  end
end
