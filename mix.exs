defmodule Salus.Mixfile do
  use Mix.Project

  def project do
    [app: :salus,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  defp deps do
    [{:ecto, "~> 2.0"},
      {:postgrex, "~> 0.8.1"},
      {:cowboy, github: "ninenines/cowboy"}]
  end

  def applications do
    [applications: [:cowboy, :ecto, :sqlite_ecto, :plig, :logger]]
  end
end
