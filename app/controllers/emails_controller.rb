class EmailsController < ApplicationController
  
  def index
  	@emails = Email.all
  end

  def create
  	@email = Email.create!(emails_params)
  end

  private

  	def emails_params
  		params.require(:email).permit(:object, :body, :opened)
  	end
end
