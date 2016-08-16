require 'pg'
require 'active_record'

# use Rack::MethodOveride
# use Rack::Flash

ActiveRecord::Base.logger = Logger.new(STDOUT)
if ENV["DATABASE_URL"]
  #Production
  ActiveRecord::Base.establish_connection(ENV["DATABASE_URL"])
else ActiveRecord::Base.establish_connection(
  adapter:  "postgresql",
  database: "tiyglossary_development"
)
end
class Category < ActiveRecord::Base
  has_many :terms
end

class Term < ActiveRecord::Base
  belongs_to :category
end
