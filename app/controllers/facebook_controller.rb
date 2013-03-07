# coding: utf-8
class FacebookController < ApplicationController
  layout 'facebook'
  def index
  end

  def prizes
  end

  def how_to_play
  end

  def word_of_the_day
    @word = Word.find_by_date(Date.today+23)
    Rails.logger.info(Date.today+23)
    if I18n.locale = 'en'
      @word_of_the_day = @word.english_word
    elsif I18n.locale = 'fr'
      @word_of_the_day = @word.french_word
    end
    @frenchword = @word.french_word.tr('Â,Ê,É,È,Û', 'A,E,E,E,U')
    @filename = "game/#{@word.english_word}_#{@frenchword}.jpg"
  end

  def word_of_the_day_thank_you
    offset = rand(40)
    if I18n.locale = 'en'
      @fact = Fact.first(:offset => offset).english_fact
    elsif I18n.locale = 'fr'
      @fact = Fact.first(:offset => offset).french_fact
    end
  end

  def contact
    @message = AjoContact::Message.new
  end

  def contact_thank_you
  end

  def create_message
    @message = AjoContact::Message.new(params[:message])
    @email = AjoContact::ContactMailer.contact_email(params[:email_address], params[:subject], params[:message][:message]).deliver
    @email.deliver
    if @message.save
      redirect_to facebook_contact_thank_you_path
    else
      render :action => :index
    end
  end

  def channel
    cache_expire = 1.year
    response.headers["Pragma"] = "public"
    response.headers["Cache-Control"] = "max-age=#{cache_expire.to_i}"
    response.headers["Expires"] = (Time.now + cache_expire).strftime("%d %m %Y %H:%I:%S %Z")
    render :layout => false, :inline => "<script src='//connect.facebook.net/en_US/all.js'></script>"
  end
end
