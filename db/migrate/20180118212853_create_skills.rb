class CreateSkills < ActiveRecord::Migration[5.1] #model generator
  def change #change method creates table called skills
    create_table :skills do |t|
      t.string :title
      t.integer :percent_utilized

      t.timestamps
    end
  end
end
