class CreatePostUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :post_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true
      t.boolean :owner

      t.timestamps
    end
  end
end
