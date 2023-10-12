require ('nameable')

class Person
  include Nameable
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  def can_use_service?
    of_age? || @parent_permission
  end

  private

  def of_age?
    age >= 18
  end

  def correct_name
    name
  end
end
