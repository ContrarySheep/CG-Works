set :user, CAP_PROFILE['production']['user']
set :deploy_to, CAP_PROFILE['production']['path']
set :port, CAP_PROFILE['production']['port']
set :rvm_bin_path, CAP_PROFILE['production']['rvm_bin_path']
set :rvm_type, :system
set :rvm_ruby_string, CAP_PROFILE['production']['rvm_ruby_string']
set :branch, CAP_PROFILE['production']['branch']
set :domain, CAP_PROFILE['production']['server']
set :deploy_env, "production"
set :rails_env, "production"
server domain, :app, :web, :primary => true
role :db, domain, :primary => true

# set :default_environment, {
#   'PATH' => "/usr/local/rvm/bin",
#   'RUBY VERSION' => "ruby-1.9.2-p318@cg-works",
#   'GEM_HOME' => "/usr/local/rvm/gems/ruby-1.9.2-p318@cg-works",
#   'GEM_PATH' => "/usr/local/rvm/gems/ruby-1.9.2-p318@cg-works",
#   'BUNDLE_PATH' => "/usr/local/rvm/gems/ruby-1.9.2-p318@cg-works"
# }