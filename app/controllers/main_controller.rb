class MainController < ApplicationController
  def index
  end

  def optin
  end

  def opt_out
    @user = AjoRegister::User.find(params[:id])
    @user.opt_in = false
    @user.opt_in_confirmed = true
    if @user.save
      redirect_to opt_out_thank_you_path
    end
  end

  def confirm_opt_in
    @user = AjoRegister::User.find(params[:id])
    @user.opt_in_confirmed = true
    if @user.save
      redirect_to opt_in_thank_you_path
    end
  end

  def opt_in_thank_you
  end

  def opt_out_thank_you
  end

  def prizes
  end

  def how_to_play
  end

  def terms_of_use
  end

  def sign_up_thank_you
  end

  def privacy_policy
  end
end
