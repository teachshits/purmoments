class MainController < ApplicationController
  def index
  end

  def optin
  end

  def opt_out
    if current_user.opt_in_confirmed == true
      redirect_to index_path
    end
    @user = AjoRegister::User.find(params[:id])
    @user.opt_in = false
    @user.opt_in_confirmed = true
    if @user.save
      redirect_to opt_out_thank_you_path
    end
  end

  def confirm_opt_in
    if current_user.opt_in_confirmed?
      redirect_to index_path
    end
    @user = AjoRegister::User.find(params[:id])
    @user.opt_in_confirmed = true
    if @user.save
      redirect_to opt_in_thank_you_path
    end
  end

  def opt_in_thank_you
    Rails.logger.info current_user.opt_in_confirmed
    if current_user.opt_in_confirmed == true
      redirect_to root_path
    end
  end

  def opt_out_thank_you
    if current_user.opt_in_confirmed?
      redirect_to index_path
    end
  end

  def prizes
  end

  def how_to_play
  end

  def terms_of_use
  end

  def privacy_policy
  end
end
