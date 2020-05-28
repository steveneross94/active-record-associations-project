class RenameCategory < ActiveRecord::Migration[5.2]
    def change
        rename_table :category, :categories
        rename_table :book, :books
        rename_table :author, :authors
        rename_table :user, :users
        rename_table :rental, :rentals
    end
end