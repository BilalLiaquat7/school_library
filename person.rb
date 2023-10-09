class Person
  def initialize(id, age, name = 'Unknown', parent_permission: true)
    @id = id
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
  attr_writer :name, :age
end
