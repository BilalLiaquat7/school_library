class Person
  def initialize(id, age, name = 'Unknown', parent_permission: true)
    @id = id
    @age = age
    @name = name
    @parent_permission = parent_permission
  end
    
  # Getters
  def id
    @id
  end
  
  def name
    @name
  end

  def age
    @age
  end
  
  # Setters
  def name=(name)
    @name = name
  end
  
  def age=(age)
    @age = age
  end
  
  def can_use_service?
    of_age? || @parent_permission
  end

  private

  def of_age?
    age >= 18
  end

end
