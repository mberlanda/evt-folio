class CreateProjectLinks < ActiveRecord::Migration
  def change
    create_table :project_links do |t|
      t.string :name, null: false
      t.text :description
      t.string :type

      t.timestamps null:false
    end
    add_reference :project_links, :project, index: true
  end
end
