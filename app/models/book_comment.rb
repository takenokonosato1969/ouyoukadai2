class BookComment < ApplicationRecord
  belongs_to :book
  belongs_to :user
  validetes :book_comment, presence:true
end
