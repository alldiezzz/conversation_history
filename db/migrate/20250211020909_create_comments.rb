class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.references :user
      t.references :project
      t.timestamps
    end
  end
end
