class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    "<#person_object: @name=#{name}>"
  end
end
