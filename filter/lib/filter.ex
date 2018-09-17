defmodule Filter do
  @moduledoc """
  Documentation for Filter.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Filter.hello
      :world

  """
  def hello do
    :world
  end
  
  def keep(list, condition) do
    result = []
    Enum.each list, fn (element) ->
      if condition.(element) do
        result ++ element
      end
    end
  end
  
  def discard(list, condition) do
    result = []
    Enum.each list, fn (element) ->
      if !condition.(element) do
        result ++ element
      end
    end
  end
end
