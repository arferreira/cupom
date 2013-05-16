require 'bundler/capistrano'

set :application, '198.199.86.139'

set :keep_releases, 3

set :scm, :git

set :repository, 'git://github.com/arferreira/cupom.git'

set :branch, 'master'

set :deploy_via, :remote_cache

set :user, "root"

set :use_sudo, false

set :deploy_to, '/var/www/cupom'

set :current, "#{deploy_to}/current"

role :web, application
role :app, application
role :db,  application, primary: true




