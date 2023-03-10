class ApplicationController < ActionController::Base
  def index
    @list_of_directors = Director
    render({ :template => "misc_templates/home"})
  end
end
