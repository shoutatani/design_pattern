class Button
  attr_accessor :command
  def initialize(&block)
    @command = block
  end

  def on_click
    # some internal process...
    execute
  end

  private

  def execute
    return unless @command

    @command.call(self)
  end
end
