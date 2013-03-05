class ChallengesController < ApplicationController
  def index
    if current_user && Entry.where(:user_id => current_user.id).count > 0
      @latest_challenge = Entry.where(:user_id => current_user.id).max_by(&:challenge_id).challenge_id || 0
    else
      @latest_challenge = 0
    end
  end

  def intro
    @numbers = ['zero', 'one', 'two', 'three', 'four', 'five', 'six']
    @challenge = @numbers[params[:id].to_i]
  end

  def play
    @numbers = ['zero', 'one', 'two', 'three', 'four', 'five', 'six']
    @challenge = @numbers[params[:id].to_i]
  end

  def completed
    if current_user && Entry.where(:user_id => current_user.id).count > 0
      @latest_challenge = Entry.where(:user_id => current_user.id).max_by(&:challenge_id).challenge_id || 0
    else
      @latest_challenge = 0
    end
  end
end
