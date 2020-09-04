defmodule HelloWorldTest do
  use ExUnit.Case

  # @tag :pending
  test "says 'Hello, World!'" do
    assert HelloWorld.hello() == "Hello, World!"
  end
end
