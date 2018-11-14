class UserMailer < ApplicationMailer
  default from: 'diecarbonapp@gmail.com'
  # layout "mailer"


  def email_congressperson(message)
    #byebug
    # @user = User.find(params[:id])
    @message = message
    @specialtext = "test"
    mail(to:'parkermdinsmore@gmail.com', subject:'My Carbon Footprint Impact', body:"#{@message}")
  end

# kirsten_gillibrand@gillibrand.senate.gov

##################################################################################
##################################################################################
##################################################################################
  # private
  #
  # def user_params
  #   params.require(:user).permit(:name, :username, :password, :picture, :email, :location)
  # end

end
