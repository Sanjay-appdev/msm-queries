class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all

    render({ :template => "director_templates/index.html.erb" })
  end

  def show_movies
    @list_of_movies = Movie.all
    @list_of_directors = Director.all

    render({ :template =>"movies_templates/play.html.erb"})
  end

  def movies_details
    movies_id = params.fetch("movie_ids")
    @movie_id = Movie.where({ :id=> movies_id }).at(0)
    @list_of_directors = Director.all

    render({ :template =>"movies_templates/movies_details.html.erb"})

    
  end


  def wisest
    @oldest = Director.where.not({:dob => nil}).order({:dob =>:asc }).at(0)

    render({ :template => "director_templates/eldest.html.erb" })

  end
  def youngest

    @youngest = Director.where.not({:dob => nil}).order({:dob =>:DESC }).at(0)

    render({ :template => "director_templates/youngest.html.erb" })

  end

  def director_details

    @the_id = params.fetch("an_id")

    @the_director = Director.where({ :id => @the_id }).at(0)
    @filmography = Movie.where({ :director_id => @the_director.id })

    render({ :template => "director_templates/show.html.erb" })
  end


  def show_actors
    @list_of_actor = Actor.all
    render({ :template => "misc_templates/actors.html.erb" })
  end


  def actor_details
    actors_id = params.fetch("actor_id")
    @actor_id = Actor.where({:id =>actors_id}).at(0)
     @list_of_character = Character.all
     @list_of_movies = Movie.where({:id=> actors_id}).at(0)

     @list_of_director = Director.all
     @list_of_actor = Actor.all
     

    render({ :template =>"misc_templates/actors_details.html.erb"})

    
  end
  end
