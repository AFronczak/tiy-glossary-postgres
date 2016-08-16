class Categories < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string :name
      t.string :subject
    end
  end
end
