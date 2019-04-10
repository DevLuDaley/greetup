#require './config/environment'
require_relative './config/environment'

# if ActiveRecord::Migrator.needs_migration?
#   raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
# end
#in order to send PATCH and DELETE requests
use Rack::MethodOverride


use UsersController
use GreetupsController
run ApplicationController
