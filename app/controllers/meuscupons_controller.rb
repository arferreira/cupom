# encoding: utf-8
class MeuscuponsController < ApplicationController
 
  def index

  	if user_signed_in?
  		
  		  	@user = current_user.id

		  	@cupom = Ticket.where(:user_id => @user)

		  	if @cupom.length > 0
		  	
		  		@cupom = Ticket.where(:user_id => @user)
		  		
		  		@cupom.each do |c|

		  			@id_ticket = c.offer_id

		  		end

		  		
		  		
		  		#@offer = Offer.find(@id_ticket)

		  	else @cupom.length < 0
		  		@mensagem = "Você ainda nao baixou cupons no site."
		  	end

	 else	  	

	 	redirect_to :controller=>'users', :action => 'sign_up' 

  	  end #fim if usuario logado



  end # fim action index

  def imprimir

  	
  	
  end


end # fim controller
