class CalculationController < ApplicationController

  def squares_form
    render({:template => "calc_templates/squares_form"})
  end

  def squares_results
    number = params[:number]
    @num = number.to_f
    @result = (@num * @num).to_f
    render({:template => "calc_templates/squares_results"})
  end

  def sqrt_form
    render({:template => "calc_templates/sqrt_form"})
  end

  def sqrt_results
    number = params[:number]
    @num = number.to_f
    @result = @num**0.5
    render({:template => "calc_templates/sqrt_results"})
  end

  def pmt_form
    render({:template => "calc_templates/pmt_form"})
  end

  def pmt_results
    @apr = params[:apr].to_f
  @years = params[:years].to_i
  @principal = params[:principal].to_f
  n = @years*12
  @pv = @principal.round(2).to_fs(:currency, {:precision => 2})
  @r_percentage= @apr.to_fs(:percentage, {:precision => 4})
  @numerator = @apr*@principal/(100*12)
  @denominator = (1-((1+@apr)**(-n)))
  @pmt = (@numerator/@denominator).to_fs(:currency, {:precision => 2})
  render({:template => "calc_templates/pmt_results"})
  end

  def random_form
    render({:template => "calc_templates/random_form"})
  end

  def random_results
    @min = params[:min].to_f
  @max = params[:max].to_f
  @rand = rand(@min..@max)
      render({:template => "calc_templates/random_results"})
  end






end
