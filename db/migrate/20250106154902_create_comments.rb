class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.boolean :published
      t.references :commentable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
