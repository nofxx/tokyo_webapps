class HomeController < ApplicationController
  def index
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
