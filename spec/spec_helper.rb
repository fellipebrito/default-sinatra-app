# spec/spec_helper.rb
require 'rack/test'
require 'rspec'

require File.expand_path '../../app.rb', __FILE__

ENV['RACK_ENV'] = 'test'

module RSpecMixin
  include Rack::Test::Methods
  def app() App end
end

# For RSpec 2.x
RSpec.configure { |c| c.include RSpecMixin }
