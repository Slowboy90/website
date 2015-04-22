class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :time
      t.string :minor
      t.text :work
      t.text :result

      t.timestamps null: false
    end
  end
end
