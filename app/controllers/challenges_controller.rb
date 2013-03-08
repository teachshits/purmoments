class ChallengesController < ApplicationController
  def index
    @available_dates = [
      Date.new(2013,1,25),
      Date.new(2013,2,8),
      Date.new(2013,2,22),
      Date.new(2013,4,6),
      Date.new(2013,4,20),
      Date.new(2013,5,3)
    ]

    @latest_contest = 0
    @available_dates.each do |d|
      if d <= Date.today
        @latest_contest += 1
      end
    end

    if current_user && Entry.where(:user_id => current_user.id).count > 0
      @latest_challenge = Entry.where(:user_id => current_user.id).max_by(&:challenge_id).challenge_id || 0
    else
      @latest_challenge = 0
    end
    Rails.logger.info @latest_challenge
    Rails.logger.info @latest_contest
    if @latest_challenge >= @latest_contest
      render 'completed'
    end
  end

  def intro
    if current_user
      @numbers = ['zero', 'one', 'two', 'three', 'four', 'five', 'six']
      @challenge = @numbers[params[:id].to_i]
    else
      redirect_to ajo_register.new_user_registration_path
    end
  end

  def play
    if current_user
      @numbers = ['zero', 'one', 'two', 'three', 'four', 'five', 'six']
      @challenge = @numbers[params[:id].to_i]
      @challenge_number = params[:id]
      if Entry.where(:user_id => current_user.id, :challenge_id => @challenge_number).count > 0
        redirect_to challenge_completed_path
      end
    else
      redirect_to challenges_path
    end

  end

  def new_entry
    @entry = Entry.new(params[:entry])
    if Entry.where(:user_id => @entry.user_id, :challenge_id => @entry.challenge_id).count == 0
      if @entry.save
        render :json => { :status => :ok }
      end
    else
      render :json => {:status => :ok }
    end
  end

  def completed
    @available_dates = [
        Date.new(2013,1,25),
        Date.new(2013,2,8),
        Date.new(2013,2,22),
        Date.new(2013,4,6),
        Date.new(2013,4,20),
        Date.new(2013,5,3)
    ]
    if current_user && Entry.where(:user_id => current_user.id).count > 0
      @latest_challenge = Entry.where(:user_id => current_user.id).max_by(&:challenge_id).challenge_id || 0
    else
      @latest_challenge = 0
    end
  end
end
