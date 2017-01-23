# This file is used by Rack-based servers to start the application.
require 'rack-slashenforce'
require ::File.expand_path('../config/environment', __FILE__)
use Rack::AppendTrailingSlash
run Rails.application
