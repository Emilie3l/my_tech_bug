class CreateBugs < ActiveRecord::Migration[6.0]
  def change
    create_table :bugs do |t|
      t.string :computer
      t.string :system
      t.string :category
      t.string :topic
      t.text :description

      t.timestamps
    end
  end
end
