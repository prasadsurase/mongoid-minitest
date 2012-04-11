gem "minitest"
require "mongoid"
require "minitest/spec"

require "minitest/matchers"
require "matchers/helpers"
require "matchers/document/have_field"
require "matchers/document/be_document"
require "matchers/document/be_paranoid"
require "matchers/document/be_versioned"
require "matchers/document/be_timestamped"
require "matchers/validations/validations"
require "matchers/validations/presence_of"
require "matchers/validations/uniqueness_of"
require "matchers/validations/length_of"
require "matchers/validations/format_of"
require "matchers/validations/exclusion_of"

module Mongoid
  module Matchers
    include Mongoid::Matchers::Document
    include Mongoid::Matchers::Validations
  end
end
