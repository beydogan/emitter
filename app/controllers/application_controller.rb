class ApplicationController < ActionController::API
  acts_as_token_authentication_handler_for User, fallback_to_devise: false
  before_filter :set_format

  def set_format
    request.format = 'json'
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end
end
