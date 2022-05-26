Rails.application.routes.draw do

  get("/users",{ :controller => "users", :action => "index"})
  get("/users/:path_username",{ :controller => "users", :action => "show"})
  get("/insert_user_record",{ :controller => "users", :action => "add_user"})

  get("/photos",{ :controller => "photos", :action => "index"})
  get("/photos/:photo_name",{ :controller => "photos", :action => "show"})

  get("/delete_photo/:photo_id",{ :controller => "photos", :action => "delete"})

  get("/insert_photo",{ :controller => "photos", :action => "create"})
  get("/update_photo/:modify_id",{ :controller => "photos", :action => "update"})
  get("/insert_comment_record",{ :controller => "photos", :action => "add_comment"})

  
end
