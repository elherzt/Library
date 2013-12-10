class BooksController < ApplicationController
  expose(:book, attributes: :book_params)
  expose(:books)
  
  def create
    if book.save
      redirect_to book
    else
      render "new"
    end
  end

  def update
    if book.save
      redirect_to book
    else
      render "edit"
    end
  end

  def destroy 
    book.destroy
    redirect_to root_path
  end

  private 
  def book_params
    params.require(:book).permit(:name, :author, :editorial, :isbn, :year, :pages)
  end

end
