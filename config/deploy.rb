require "bundler/capistrano"
load 'deploy/assets'

#set :rvm_ruby_string, 'ree@rails3'                     # Or:
set :rvm_ruby_string, ENV['GEM_HOME'].gsub(/.*\//,"") # Read from local system

require "rvm/capistrano"

set :application, "spree"
set :user, 'spree'
set :group, 'www-data'
set :rails_env, 'production'

set :rvm_type, :system  

role :web, '50.116.11.162'
role :app, '50.116.11.162'
role :db,  '50.116.11.162', :primary => true

set :scm, :git
set :repository,  "git@github.com:whitmanc/sisbro.git"
set :branch,      "master"
set :deploy_to,   "/data/#{application}"
set :deploy_via,  :remote_cache
set :use_sudo,    false

default_run_options[:pty] = true
set :ssh_options, { :forward_agent => true }

namespace :foreman do
  desc "Export the Procfile to Ubuntu's upstart scripts"
  task :export, :roles => :app do
    run "cd #{current_path} && bundle exec foreman export upstart /etc/init"
  end

  desc "Start the application services"
  task :start, :roles => :app do
    sudo "start #{application}"
  end

  desc "Stop the application services"
  task :stop, :roles => :app do
    sudo "stop #{application}"
  end

  desc "Restart the application services"
  task :restart, :roles => :app do
    sudo "restart #{application}"
  end
end

namespace :deploy do
  desc "Symlink shared configs and folders on each release."
  task :symlink_shared do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
    run "ln -nfs #{shared_path}/config/Procfile #{release_path}/Procfile"
    run "ln -nfs #{shared_path}/config/.foreman #{release_path}/.foreman"
  end
end

before 'deploy:assets:precompile', 'deploy:symlink_shared'

before 'deploy:start', 'foreman:export'
after 'deploy:start', 'foreman:start'

before 'deploy:restart', 'foreman:export'
after 'deploy:restart', 'foreman:restart'