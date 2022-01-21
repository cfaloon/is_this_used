# frozen_string_literal: true

require 'is_this_used/cruft_tracker'

module Fixtures
  class ExampleCruft3
    include IsThisUsed::CruftTracker

    attr_accessor :name

    def initialize(name)
      @name = name
    end

    def hello
      "Hi, #{name}"
    end

    is_this_used? :hello
  end
end
