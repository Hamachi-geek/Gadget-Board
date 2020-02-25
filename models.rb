ActiveRecord::Base.establish_connection("sqlite3:db/development.db")

class Article < ActiveRecord::Base
end
