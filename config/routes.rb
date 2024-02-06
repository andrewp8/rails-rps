Rails.application.routes.draw do
  get("/",{:controller=> "home", :action => "home"})
  get("/rock",{:controller => "home", :action => "rock"})
  get("/paper",{:controller => "home", :action => "paper"})
  get("/scissors",{:controller => "home", :action => "scissors"})
end
