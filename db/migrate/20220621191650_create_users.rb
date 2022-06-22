class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name , null: false
      t.string :email , null: false 
      t.string :password_digest , null: false 
      t.string :remember_digest , null: false 
      t.string :activation_digest , null: false
      t.boolean :activated , default: false
      t.datetime :activated_at
      t.string :reset_digest , null: false
      t.datetime :reset_sent_at
      t.timestamps null: false
    end

    add_index :users, :email, unique: true
  end
end
