class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps null:false
    end

    add_reference :projects, :category, index: true
  end
end

class Category < ActiveRecord::Base
  has_many :projects
end
class Project < ActiveRecord::Base
  belongs_to :category
end