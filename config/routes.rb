Rails.application.routes.draw do
  
  get("/directors", { :controller =>"directors",:action => "index" })


  get("/directors/eldest", { :controller =>"directors",:action => "wisest" })
  
  get("/directors/youngest", { :controller =>"directors",:action => "youngest" })


  get("/directors/:an_id", { :controller =>"directors",:action => "director_details" })
  
  get("/", { :controller => "application", :action => "homepage" })
  
  get("/directors/youngest", { :controller =>"directors",:action => "youngest" })

  get("/movies", { :controller =>"directors", :action => "show_movies" })

  get("/actors", { :controller =>"directors", :action => "show_actors" })
  
  get("/movies/:movie_ids", { :controller =>"directors", :action => "movies_details" })

  get("/actors/:actor_id", { :controller =>"directors", :action => "actor_details" })
end
