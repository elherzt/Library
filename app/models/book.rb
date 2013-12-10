class Book < ActiveRecord::Base
  validates :name, :author, :year, :editorial, :isbn, presence: true
end
