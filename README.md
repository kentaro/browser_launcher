# BrowserLauncher [![hex.pm version](https://img.shields.io/hexpm/v/browser_launcher.svg)](https://hex.pm/packages/browser_launcher)

This module provides a function to open URL with the default browser for your OS.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `browser_launcher` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:browser_launcher, "~> 0.1.0"}
  ]
end
```

## Examples

URL can be either remote location or local file path.

**Remote location**:

```
iex> BrowserLauncher.open("https://elixir-lang.org/")
{"", 0}
```

**Local file path**:

```
iex> BrowserLauncher.open("file:///path/to/your.html")
{"", 0}
```

## Author

[Kentaro Kuribayashi](https://kentarokuribayashi.com/)

## License

MIT
