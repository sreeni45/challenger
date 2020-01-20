class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.string :profile_pic
      t.string :uid
      t.string :provider
      t.string :gender
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
