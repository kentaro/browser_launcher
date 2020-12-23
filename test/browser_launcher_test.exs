defmodule BrowserLauncherTest do
  use ExUnit.Case
  import Mock

  test "cmd/1" do
    cmd = {:unix, :darwin} |> BrowserLauncher.cmd()
    assert cmd == "open"
    cmd = {:unix, :linux}  |> BrowserLauncher.cmd()
    assert cmd == "xdg-open"
    cmd = {:win32, :windows} |> BrowserLauncher.cmd()
    assert cmd == "start"
    assert_raise RuntimeError, "unknown platform", fn ->
      {:unknown, :unknown} |> BrowserLauncher.cmd()
    end
  end

  test_with_mock "run/2", System, [cmd: fn (_, _)-> {"", 0} end ] do
    res = BrowserLauncher.run("open", "https://example.com")
    assert res == {"", 0}
  end
end
