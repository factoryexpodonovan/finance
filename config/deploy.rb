# https://github.com/carlhuda/bundler/issues/635
# https://github.com/carlhuda/bundler/issues/646
#set :bundle_flags, "--deployment --quiet"
set :bundle_flags, "--quiet"

# Adding bundler tasks.
require "bundler/capistrano"


load 'deploy'
load 'deploy/assets'
set :application, "finance"
set :repository,  "git@github.com:factoryexpodonovan/finance.git"

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`



require "../zzCredentials/financeCreds.rb" 



#server "finance.exposw.com", :app, :web, :db, :primary => true
#set :deploy_to, "/var/www/finance.mobilehome.com/web"

# if you want to clean up old releases on each deploy uncomment: this:
after "deploy:restart", "deploy:cleanup"
after 'deploy:update_code', 'deploy:symlink_db'



namespace :deploy do
  desc "Symlinks the database.yml"
  task :symlink_db, :roles => :app do
    run "ln -nfs #{deploy_to}/shared/config/database.yml #{release_path}/config/database.yml"
  end
end

after "deploy", "deploy:migrate"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end



