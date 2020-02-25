class CreateArticles < ActiveRecord::Migration[5.2]
  def change
  
    t.string :person
    t.string :comment
    
    end
  end
end
