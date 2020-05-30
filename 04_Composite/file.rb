require './component'

class MyFile < Component
  def initialize(name)
    super(name)
  end

  def current_path
    path_tree = []
    path_tree << parent.current_path if parent
    path_tree << name
    path_tree.flatten
  end

  def describe
    puts "My file name is #{name}, and I'm located at #{current_path.join}"
  end
end
