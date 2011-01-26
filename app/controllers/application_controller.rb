class ApplicationController < ActionController::Base
  require 'lib/authenticated_system.rb'
  include AuthenticatedSystem

  protect_from_forgery
end
