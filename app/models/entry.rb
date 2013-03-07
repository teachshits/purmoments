class Entry < ActiveRecord::Base
  attr_accessible :entry_code, :challenge_id, :user_id
end
