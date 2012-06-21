class ApiController < ApplicationController

   def token
       render :json => generate_token(2742)
       
   end    
end
