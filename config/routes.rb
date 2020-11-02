Rails.application.routes.draw do

  get("/", { :controller => "users", :action => "redirect"})

  get("/users", { :controller => "users", :action => "index"})

  get("/users/:username", { :controller => "users", :action => "user"})

  get("/users/add", { :controller => "users", :action => "add"})


  get("/photos", { :controller => "photos", :action => "index"})

  get("/photos/:photo_id", { :controller => "photos", :action => "show"})

  get("/insert_comment_record",  { :controller => "photos", :action => "comment"})


end
