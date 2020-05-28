class CreateAuthor < ActiveRecord::Migration[5.2]
    def change
        create_table :author do |t|
            t.string :name
        end
    end
end