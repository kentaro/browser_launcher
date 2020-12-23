defmodule BrowserLauncherTest do
  use ExUnit.Case
  doctest BrowserLauncher

  test "greets the world" do
    assert BrowserLauncher.hello() == :world
  end
end
