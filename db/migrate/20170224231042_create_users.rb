class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :user_name
      t.string :password_digest
      t.string :industry
      t.string :company
      t.string :title

      t.timestamps
    end
  end
end
