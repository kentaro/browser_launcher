defmodule BrowserLauncher do
  @moduledoc File.read!("./README.md")

  @doc """
  Opens URL with the default browser.

  ## Examples

      iex> BrowserLauncher.open("https://elixir-lang.org/")
      {"", 0}

  """
  def open(url) do
    os_type()
    |> cmd()
    |> run(url)
  end

  def cmd({:unix, :darwin}) do
    "open"
  end
  def cmd({:unix, _}) do
    "xdg-open"
  end
  def cmd({:win32, _}) do
    "start"
  end
  def cmd(_) do
    raise("unknown platform")
  end

  def run(cmd, url) do
    System.cmd(cmd, [url])
  end

  defp os_type do
    :os.type
  end
end
