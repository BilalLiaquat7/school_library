require './person'

class Student < Person
  def initialize(id, name = "Unknown", age, parent_permission = true, classroom)
    super(id, name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end