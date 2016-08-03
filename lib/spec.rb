def describe(description, &block)
  ExampleGroup.new(block).evaluate!
end
