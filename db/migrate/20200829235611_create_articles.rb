class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.integer :a_id
      t.integer :likes

      t.timestamps
    end
  end
end
