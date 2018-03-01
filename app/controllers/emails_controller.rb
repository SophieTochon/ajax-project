class EmailsController < ApplicationController
  
  def index
  	@emails = Email.all
  end

  def create
  	@email = Email.create!(emails_params)
  end

  def show
    @email = Email.find(params[:id])

    respond_to do |f|
      f.html { redirect_to emails_url }
      f.js
    end
  end

  def destroy
    @email = Email.destroy(params[:id])

    respond_to do |f|
      f.html { redirect_to emails_url }
      f.js
    end
  end

  private

  	def emails_params
  		params.require(:email).permit(:object, :body, :opened)
  	end
end