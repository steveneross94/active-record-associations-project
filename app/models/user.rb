class User < ActiveRecord::Base
    has_many :rentals
    has_many :books, through: :rentals

    def check_out_book(book, date)
        new_book = Rental.create(returned: false, due_date: date)
        new_book.user_id = self.id
        new_book.book_id = book.id
        new_book.save
        new_book
    end

    def return_book(book)
        returned = rentals.find_by(book_id: book.id)
        returned.returned = true
        returned.save
        returned
    
    end

end



