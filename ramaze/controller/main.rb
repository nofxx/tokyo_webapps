# Default url mappings are:
#  a controller called Main is mapped on the root of the site: /
#  a controller called Something is mapped on: /something
# If you want to override this, add a line like this inside the class
#  map '/otherurl'
# this will force the controller to be mounted on: /otherurl

class MainController < Controller
  engine :Haml
  # the index action is called automatically when no other action is specified
  # def index
  #   @title = "Welcome to Ramaze!"
  # end
  def index
    %(
      !!!
      %html
        %head
          %title My Haml Page
        %body
          #header
            %h2 Welcome!
          #content
            hi there!
          #footer
            %span.small
              %a{ :href => 'http://ramaze.net' } Powered by Ramaze
    ).unindent
  end

  # the string returned at the end of the function is used as the html body
  # if there is no template for the action. if there is a template, the string
  # is silently ignored
  def notemplate
    "there is no 'notemplate.xhtml' associated with this action"
  end
end
