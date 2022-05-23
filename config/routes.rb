Rails.application.routes.draw do

  get("/users",{ :controller => "users", :action => "index"})
  get("/users/:input",{ :controller => "users", :action => "index"})

end
