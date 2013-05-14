require 'bundler/capistrano'

set :application, '198.199.110.29'

set :keep_releases, 3

set :scm, :git

set :repository, 'https://github.com/arferreira/cupom.git'

set :branch, 'master'

set :deploy_via, :copy

set :user, "root"

set :use_sudo, false

set :deploy_to, '/var/www/cupom'

set :current, "#{deploy_to}/current"

role :web, application
role :app, application
role :db,  application, primary: true


namespace :deploy do
  task :start do
    %w(config/database.yml).each do |path|
      from  = "#{deploy_to}/#{path}"
      to    = "#{current}/#{path}"

      run "if [ -f '#{to}' ]; then rm '#{to}'; fi; ln -s #{from} #{to}"
    end

    run "cd #{current} && RAILS_ENV=production && GEM_HOME=/opt/local/ruby/gems && bundle exec unicorn_rails -c #{deploy_to}/config/unicorn.rb -D"

  end

  task :stop do
    
    run "if [ -e /var/www/cupom/shared/pids/unicorn.pid ]; then kill `cat /var/www/cupom/shared/pids/unicorn.pid`; fi;"
  end

  task :restart do
    stop
    start
  end
end

