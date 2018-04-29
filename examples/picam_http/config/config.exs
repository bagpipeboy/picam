use Mix.Config

config :picam_http, port: 4001

import_config "#{Mix.Project.config[:target]}.exs"
