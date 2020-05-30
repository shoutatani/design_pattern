class Report
  def initialize(title, bodies)
    @title = title
    @bodies = bodies
  end

  def output
    output_start
    output_head_start
    output_head
    output_head_end
    output_body_start
    output_body
    output_body_end
    output_end
  end

  def output_start; end

  def output_head_start; end

  def output_head; end

  def output_head_end; end

  def output_body_start; end

  def output_body; end

  def output_body_end; end

  def output_end; end
end
