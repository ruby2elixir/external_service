defmodule ExternalService.Mixfile do
  use Mix.Project

  def project do
    [
      app: :external_service,
      version: "0.5.1",
      description: "Elixir library for safely consuming external services using retry logic and circuit breakers",
      source_url: "https://github.com/jvoegele/external_service",
      elixir: "~> 1.4",
      start_permanent: Mix.env == :prod,
      package: package(),
      deps: deps()
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
      {:fuse, "~> 2.4"},
      {:retry, "~> 0.7.0"},
      {:ex_doc, "~> 0.14", only: :dev, runtime: false},
      {:dialyxir, "~> 0.5", only: [:dev, :test], runtime: false},
    ]
  end

  defp package do
    # These are the default files included in the package
    [
      name: :external_service,
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Jason Voegele", "Chad Jablonski"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/jvoegele/external_service"}
    ]
  end
end