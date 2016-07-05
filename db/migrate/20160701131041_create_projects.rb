class Project < ActiveRecord::Base
end
class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.text :description
      t.string :customer
      t.string :location
      t.date :date

      t.timestamps null:false
    end
  end
end
