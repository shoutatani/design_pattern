class EnumerableSizes
  include Enumerable

  def initialize(sizes)
    @sizes = sizes
  end

  def each(&block)
    @sizes.each do |size|
      block.call(size)
    end
  end
end
