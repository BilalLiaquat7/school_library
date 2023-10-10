class Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..10000)
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

  attr_reader :id
  attr_accessor :name, :age
end
