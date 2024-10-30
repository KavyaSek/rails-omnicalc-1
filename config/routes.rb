Rails.application.routes.draw do
  get("/", {:controller => "calculation", :action => "squares_form"})
  get("/square/new", {:controller => "calculation", :action => "squares_form"})
  get("/squares/results", {:controller => "calculation", :action => "squares_results"})
  get("/square_root/new", {:controller => "calculation", :action => "sqrt_form"})
  get("/square_root/results", {:controller => "calculation", :action => "sqrt_results"})
  get("/payment/new", {:controller => "calculation", :action => "pmt_form"})
  get("/payment/results", {:controller => "calculation", :action => "pmt_results"})
  get("/random/new", {:controller => "calculation", :action => "random_form"})
  get("/random/results", {:controller => "calculation", :action => "random_results"})  


end
