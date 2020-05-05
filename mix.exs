defmodule FawkesBlog.MixProject do
  use Mix.Project

  def project do
    [
      app: :fawkes_blog,
      version: "0.1.0",
      elixir: "~> 1.10",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: applications(Mix.env())
    ]
  end

  defp applications(:test) do
    [:plug, :cowboy | applications(:prod)]
  end

  defp applications(_) do
    [
      :gettext,
      :phoenix
    ]
  end

  defp elixirc_paths(_), do: ["lib", "web"]

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:phoenix, "~> 1.5.1"},
      {:phoenix_html, "~> 2.11"},
      {:gettext, "~> 0.11"}
    ]
  end
end
