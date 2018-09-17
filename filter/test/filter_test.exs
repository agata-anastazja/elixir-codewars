defmodule FilterTest do
  use ExUnit.Case
  doctest Filter

  
  def first(foo), do: rem(foo, 2)
  
  test "greets the world" do
    assert Filter.hello() == :world
  end
  
  test "keep returns the list of elements that fullfil the function's condition " do
    list = [1, 3, 5, 6]
     dividesByTwo = fn (a) -> rem(a, 2) == 0 end
    assert(Filter.keep(list, dividesByTwo), [6])
  end
  
  test "returns the list of elements that don't fullfil the function's condition " do
    list = [1, 3, 5, 6]
     dividesByTwo = fn (a) -> rem(a, 2) == 0 end
    assert(Filter.discard(list, dividesByTwo), [1, 3, 5])
  end
end
