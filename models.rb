require 'bundler/setup'
Bundler.require

if development?
    ActiveRecord::Base.establish_connection("sqlite3:db/development.db")
end
    
class Article < ActiveRecord::Base

    validates :comment, presence: true
    validates :person, length: { maximum: 15 }
end