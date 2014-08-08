
# required from within Capfile
set :git_strategy, GitCopyStrategy

role :app, %w{vagrant@localhost:2222}
set :deploy_to, '/home/vagrant/app'

set :ssh_options, {
 keys: %w(~/.vagrant.d/insecure_private_key),
}

namespace :deploy do
  namespace :symlink do
    task :release do
      on release_roles :all do
        # Extract
        # /path/to/releases/20140807235828 → 20140807235828
        current_release = File.basename(release_path)

        within(deploy_path) do
          execute :rm, '-rf', 'dev'
          execute :ln, '-s', "releases/#{current_release}", 'dev'
        end
      end
    end
  end
end
