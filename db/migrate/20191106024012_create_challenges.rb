class CreateChallenges < ActiveRecord::Migration[5.2]
    def change
        create_table :challenges do |t|
            t.string :media_url
            t.string :name
            t.string :description
            t.datetime :begin_at
            t.datetime :end_at
            t.datetime :deleted_at
            t.timestamps
        end
    end
end
