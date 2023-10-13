class Rental
  attr_accessor :date
  
  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person

    book.add_rental()
    person.add_rental()
  end
end