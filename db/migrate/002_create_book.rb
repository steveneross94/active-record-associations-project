class CreateBook < ActiveRecord::Migration[5.2]
    def change
        create_table :book do |t|
            t.string :title
        end
    end
end