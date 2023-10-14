require './nameable'
require './capitalize_decorator'
require './trimmer_decorator'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(age = 0, name = 'Unknown', parent_permission: true, nameable: nil)
    super()
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @nameable = nameable
    @rentals = []
  end

  def can_use_service?
    of_age? || @parent_permission
  end

  def correct_name
    name
  end

  def add_rental(book, date)
    rental = Rental.new(date, self, book)
    rentals.push(rental)
  end

  private

  def of_age?
    age >= 18
  end
end

# person = Person.new(22, 'maximilianus')
# person.correct_name
# capitalized_person = CapitalizeDecorator.new(person)
# puts capitalized_person.correct_name
# capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
# puts capitalized_trimmed_person.correct_name