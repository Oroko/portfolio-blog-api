class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :github_url
      t.string :stacks, array: true

      t.timestamps
    end
  end
end
