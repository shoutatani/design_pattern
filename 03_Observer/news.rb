require './subject'

class News
  include Subject

  attr_accessor :title, :description

  def initialize(title, description)
    super()
    @title = title
    @description = description
  end

  def save
    notify_observers
  end
end
