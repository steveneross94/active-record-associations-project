class CreateRentals < ActiveRecord::Migration[5.2]
    def change
        create_table :rental do |t|
            t.integer :book_id
            t.integer :user_id
            t.boolean :returned
            t.datetime :due_date
        end
        add_column :book, :author_id, :integer
        add_column :book, :category_id, :integer
    end
end
