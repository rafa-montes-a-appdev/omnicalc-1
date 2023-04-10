Rails.application.routes.draw do
  
  get("/square/new", {:controller => "application", :action => "blank_square_form"})
  get("/square/results", {:controller => "application", :action => "calculate_square"})

  get("/square", {:controller => "application", :action => "square_form"})
  get("/square_root", {:controller => "application", :action => "square_root_form"})
  get("/payment",{:controller => "application",:action => "payment_form"})
  get("/random",{:controller => "application", :action => "random_form"})

end
