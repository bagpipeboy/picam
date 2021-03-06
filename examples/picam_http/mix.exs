defmodule PicamHTTP.Mixfile do
  use Mix.Project

  def project do
    [app: :picam_http,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     target: :host,
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger],
     mod: {PicamHTTP.Application, []}]
  end

  defp deps do
    [{:picam, path: "../../"},
     {:cowboy, "~> 1.0.0"},
     {:plug, "~> 1.0"}]
  end
end
