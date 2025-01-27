defmodule ExWeb3EcRecover.MixProject do
  use Mix.Project

  def project do
    [
      name: "ex_web3_ec_recover",
      source_url: "https://github.com/hawku-com/ex_web3_ec_recover",
      docs: [
        # The main page in the docs
        main: "ExWeb3EcRecover",
        extras: ["README.md"]
      ],
      app: :ex_web3_ec_recover,
      version: "0.2.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      description: description(),
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

  defp description() do
    "Library for recovering web3 ETH signatures."
  end

  defp package() do
    [
      name: "ex_web3_ec_recover",
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Hawku, Inc,", "Charlie Graham", "Hajto"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/hawku-com/ex_web3_ec_recover"}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_secp256k1, "~> 0.5"},
      {:ex_keccak, "~> 0.4"},
      {:ex_doc, "~> 0.24", only: :dev, runtime: false},
      {:ex_abi, "~> 0.5"},
      {:credo, "~> 1.6.1", only: [:dev, :test], runtime: false}
    ]
  end
end
