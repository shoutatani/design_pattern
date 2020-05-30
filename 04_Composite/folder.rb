require './component'

class MyFolder < Component
  def initialize(name)
    super(name)
    @files = []
  end

  def add(file)
    file.parent = self
    @files << file
  end

  def remove(file)
    file.parent = nil
    @files.delete(file)
  end

  def current_path
    path_tree = []
    path_tree << parent.current_path if parent
    path_tree << (name + '/')
    path_tree.flatten
  end

  def describe
    puts "My folder name is #{name}, and I'm located at #{current_path.join}"
    return unless @files.length.positive?

    puts ' and, I have these items.'
    @files.each do |file|
      puts " #{file.current_path.join}"
    end
  end
end
