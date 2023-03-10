class ApplicationController < ActionController::Base
  def homepage
    #@list_of_directors = Director
    render({ :template => "misc_templates/home"})
  end
end
