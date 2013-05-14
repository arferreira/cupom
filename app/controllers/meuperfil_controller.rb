class MeuperfilController < ApplicationController
  def index

  	if user_signed_in?

  	#pego o id do usuario logado e faço uma busca por parametro
  	params[:user_id] = current_user.id
  	@user = User.where(id:current_user.id)

  	else
  		redirect_to :controller=>'users', :action => 'sign_up'
  	end


  end
end
