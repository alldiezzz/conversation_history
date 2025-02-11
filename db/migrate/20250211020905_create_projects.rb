class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.references :user
      t.integer :status, default: 0
      t.timestamps
    end
  end
end
