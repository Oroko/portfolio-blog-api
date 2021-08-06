class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :githubLink
      t.string :projectImg_url
      t.string :techStack

      t.timestamps
    end
  end
end