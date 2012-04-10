gem "minitest"
require "mongoid"
require "minitest/spec"

require "minitest/matchers"
Dir[File.dirname(__FILE__) + "/mongoid-minitest/matchers/**/*.rb"].each { |f| require f }

module Mongoid
  module Matchers
    include Mongoid::Matchers::Document
    include Mongoid::Matchers::Validations
  end
end
