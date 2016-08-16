class Terms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string :name
      t.string :definition
      t.string :author
      t.string :web_link
      t.integer :category_id
    end
  end
end
