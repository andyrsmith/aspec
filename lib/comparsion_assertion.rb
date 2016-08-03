class ComparsionAssertion
  def initialize(subject)
    @subject = subject
  end

  def contain(other)
    raise AssertionError unless @subject.size == other
  end
end
