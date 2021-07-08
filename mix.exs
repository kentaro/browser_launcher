defmodule BrowserLauncher.MixProject do
  use Mix.Project

  def project do
    [
      app: :browser_launcher,
      version: "0.1.2",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      source_url: "https://github.com/kentaro/browser_launcher",
      homepage_url: "https://github.com/kentaro/browser_launcher",
      description: description(),
      package: package(),
      docs: docs(),
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:ex_doc, "~> 0.23", only: :dev, runtime: false},{:mock, "~> 0.3.0", only: :test}
    ]
  end

  defp description do
    "This module provides a function to open URL with the default browser for your OS."
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/kentaro/browser_launcher"}
    ]
  end

  defp docs do
    [
      main: "BrowserLauncher",
    ]
  end
end
