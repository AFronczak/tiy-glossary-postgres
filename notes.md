Clone
Bundle

rake db:drop, db:create, db:migrate, db:seed

ruby testing.rb
Should work!!

- Now we can run `rake -T` or `bundle exec rake -T` to see all the `tasks` we have
 +- First we have is: `rake db:create` to build our database
 +  - We also have `rake db:drop` and we also don't have to care about the command line syntax
 +- Now we can use _migrations_ to create our tables or modify them.
 +- `rake db:new_migration name=create_teams`
 +  - Creates a new file in `db/migrate` folder that is timestamped and has `create_players` in the name.
 +  - Also automatically adds syntax to create a table! (nice!)
 +  ```
 +  class CreatePlayers < ActiveRecord::Migration
 +    def change
 +      create_table :players do |t|
 +        t.string :name
 +        t.integer :age
 +        t.string :shirt_size
 +        t.date :birthday
 +
 +        t.timestamps
 +      end
 +    end
 +  end
 +  ```
