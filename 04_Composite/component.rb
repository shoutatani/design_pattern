class Component
  attr_accessor :name, :parent
  def initialize(name)
    @name = name
  end

  def current_path; end
  def describe; end
end
