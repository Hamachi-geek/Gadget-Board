class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.timestamps null: false
      t.string :person
      t.string :comment
    end
  end
end
