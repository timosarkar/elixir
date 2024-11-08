{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.erlang_24
    pkgs.elixir_1_14
    pkgs.python3
    pkgs.nodejs_22
  ];

  shellHook = ''
    mix archive.install hex phx_new 1.5.9
    mix deps.get
    cd assets && npm install && node node_modules/webpack/bin/webpack.js --mode development
    MIX_ENV=dev mix ecto.create
    MIX_ENV=dev mix ecto.migrate
    MIX_ENV=dev mix phx.server
  '';
}
