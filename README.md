# BrowserLauncher

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
iex> BrowserLauncher.open("file:///Users/antipop/src/github.com/kentaro/browser_launcher/README.md")
{"", 0}
```

## Author

[Kentaro Kuribayashi](https://kentarokuribayashi.com/)

## License

MIT
