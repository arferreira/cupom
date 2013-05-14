# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Cupom::Application.initialize!
require 'will_paginate'
require "omniauth-facebook"
require "omniauth"
WillPaginate::ViewHelpers.pagination_options[:renderer] = 'AjaxWillPaginate'
