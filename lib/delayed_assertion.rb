class DelayedAssertion
  def initialize(subject)
    @subject = subject
  end

  def ==(other)
    raise AssertionError unless @subject == other
  end

  def >(other)
    raise AssertionError unless @subject > other
  end

  def <(other)
    raise AssertionError unless @subject < other
  end

  def >=(other)
    raise AssertionError unless @subject >= other
  end

  def <=(other)
    raise AssertionError unless @subject <= other
  end
end
