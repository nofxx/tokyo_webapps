class HomeController < ApplicationController

  def index
    expires_in  5.seconds, :public => true
    fresh_when :etag => @ip
    headers['Cache-Control'] = 'public'
    #fresh_when :last_modified => @ip
    #debugger
    # store_location
    @ip = request.remote_ip
    @session = if session[:bar]
                 "Data: #{session[:bar]}"
               else
                 session[:bar] = 'foo'
                 "Writing session...#{session[:bar] = 'foo'}"
               end

  end
end
