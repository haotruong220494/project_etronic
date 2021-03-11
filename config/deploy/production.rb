set :stage, :production
set :rails_env, :production
set :branch, "main"
set :deploy_to, "var/www/belo"
server "52.221.24.225", user: "ubuntu", roles: %w{app db web}
