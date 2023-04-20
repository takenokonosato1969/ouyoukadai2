class BookCommentsController < ApplicationController

  def create
    book = Book.find(params[:book_id])
    # comment = current_user.book_comments.new(book_comment_params)
    comment = BookComment.new(book_comment_params)
    comment.user_id = current_user.id
    comment.book.id = book.id
    comment.save
    redirect_to books_path
  end

  def destroy
    BookComent.find(params[:id]).destroy
    redirect_to book_path(params[:book_id])
  end

  private

  def book_comment_params
    params.require(:book_comment).permit(:comment, :user_id)
  end

end
