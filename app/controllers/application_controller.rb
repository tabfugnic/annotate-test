class ApplicationController < ActionController::Base
  protect_from_forgery
 
  def generate_token(user)
      return JWT.encode({
        'consumerKey' => 'ff02c24956974c58bbfbab56f72a50c1',
	'userId' => user,
	'issuedAt' => DateTime.now.utc,
	'ttl' => 86400}, 'a6635386-cf02-4cf0-aabe-8f9140a4d78e')
  end		
end
