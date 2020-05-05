defmodule FawkesBlogTest do
  use ExUnit.Case
  doctest FawkesBlog

  test "greets the world" do
    assert FawkesBlog.hello() == :world
  end
end
