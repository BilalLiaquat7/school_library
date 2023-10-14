require './person'

class Teacher < Person
  def initialize(specialization = 'Unknown', age = 0, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
