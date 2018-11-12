class UserMailer < ApplicationMailer
  default from: 'from@example.com'

  def email_congressperson
    @user = User.find(params[:id])
    @specialtext = 'This is a test email'
    mail(to: 'parkermdinsmore@gmail.com', subject: 'My Carbon Footprint Impact')
  end

# kirsten_gillibrand@gillibrand.senate.gov

##################################################################################
##################################################################################
##################################################################################
  private

  def user_params
    params.require(:user).permit(:name, :username, :password, :picture, :email, :location)
  end

end
