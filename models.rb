ActiveRecord::Base.establish_connection("sqlite3:db/development.db")

class History < ActiveRecord::Base
end    

class Article < ActiveRecord::Base
end
