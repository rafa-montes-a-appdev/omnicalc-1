class ApplicationController < ActionController::Base
 layout("wrapper.html.erb")
 
  def blank_square_form
    render({:template => "/calculation_templates/square_form.html.erb"})
  end 


  def calculate_square
    @num = params.fetch("sq_input").to_f
    @square_of_num = @num ** 2
    render({:template => "/calculation_templates/square_results.html.erb"})
  end 


  def blank_square_root_form

    render({:template => "/calculation_templates/square_root_form.html.erb"})
  end 

  def calculate_square_root
    @sq_root_input = params.fetch("sq_root_input").to_f
    @square_root_of_input = @sq_root_input ** (0.5)
    render({:template => "/calculation_templates/square_root_results.html.erb"})
  end 

  def blank_payment_form

    render({:template => "/calculation_templates/payment_form.html.erb"})
  end 

  def calculate_payment
    @apr = params.fetch("user_apr").to_f/100.0
    @apr_disp = "#{(100*@apr).round(4)}%"
    @years = params.fetch("user_years").to_f
    @months = @years*12
    @principal = params.fetch("user_principal").to_f

    @payment_num = @apr/12.0 * @principal
    @payment_den = 1 - (1 + @apr/12.0)**(-@months)
    @payment = (@payment_num/@payment_den).round(2)

    render({:template => "/calculation_templates/payment_results.html.erb"})
  end 

  def blank_random_form

    render({:template => "/calculation_templates/random_form.html.erb"})
  end 

  def calculate_random
    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @random_number = rand(@lower..@upper)
    render({:template => "/calculation_templates/random_results.html.erb"})
  end 

end
