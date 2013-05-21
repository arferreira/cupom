# encoding: utf-8
class PortalController < ApplicationController
	def index
		 
		 @offer = Offer.paginate(:page => params[:page], :per_page => 2)

	end

	def show
			@offer = Offer.new
			@id_offer =  params[:id_cupom]
	end

	def baixouoferta(id_user,id_offer)


		@cupom = Ticket.where(:user_id => id_user, :offer_id => id_offer)



		
	end

	def imprimir
		
		@id_offer = params[:id_cupom]

		@offer = Offer.find(@id_offer)

	end

	def baixar

		

		if user_signed_in?
		# pegando o id do cupom para baixar
		@id_baixar =  params[:id_cupom]
		# id do usuario logado
		@user = current_user.id
		@baixou =  baixouoferta(@user,@id_baixar)
		if @baixou.length == 0
		# algoritmo gerando um token pra cada cupom
		@token = rand.to_s

		# inserção do ticket pro usuario

		@ticket = Ticket.new
		@ticket.offer_id = @id_baixar
		@ticket.user_id = @user
		@ticket.token = @token
		@ticket.save 

		# mensagem de ok!
		@mensagem = "O seu cupom já está em sua área restrita / Meus cupons."
		@protocolo = "O número de protocolo gerado foi: #{@token}"

	    else
	    # mando o usuario pra index,  ele ja baixou o cupom.
		redirect_to :controller=>'portal', :action => 'index'	    	
			
		end

		else

		redirect_to :controller=>'users', :action => 'sign_up' 
			
		end

		

		
	end # fim action baixar


	def maiores
	
		@offer_maiores = Offer.find(:all, :order => "dicount DESC", :limit => "10")

	end

	def busca
		 @offers = Offer.search(params[:search]).paginate(:per_page => 5, :page => params[:page])
	end

	
	def top
			
    end

    def acabando
    	
    end

    def baixados
    	
    end

end
