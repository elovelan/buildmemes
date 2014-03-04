require_relative '../buildmemes'
require 'rspec'
require 'rack/test'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  config.order = 'random'
end

### From decorate_icon
# require 'rake'
#
# $:.push File.expand_path("../lib", __FILE__)
#
# Dir["lib/ios_build_kit/**/*.rb"].reject { |file| file.include? "lib/ios_build_kit/version.rb" }.each { |f| load(f) }
#
# require_relative 'support/config_mocker.rb'
# require_relative 'support/temp_dir.rb'
#
# RSpec.configure do |config|
#
#   config.color_enabled = true
#   config.tty = true
# 	config.formatter = :documentation
# 	config.fail_fast = true
#
# 	config.before(:each) do
#     create_spec_temp_dir
#     clone_and_modify_icons
#   end
#
# 	config.after(:each) do
#     destroy_spec_temp_dir
#   end
#
# end
