# Load DSL and Setup Up Stages
require 'capistrano/setup'
# Includes default deployment tasks
require 'capistrano/deploy'

require_relative 'lib/capistrano/copy_strategy'

# Loads custom tasks from `lib/capistrano/tasks' if you have any defined.
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
