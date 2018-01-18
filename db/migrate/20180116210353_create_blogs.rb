class CreateBlogs < ActiveRecord::Migration[5.1] #scaffold generator
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
