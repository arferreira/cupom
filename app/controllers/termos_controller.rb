class TermosController < ApplicationController
  def index
  	@termos = TermoUso.all
  end
end
