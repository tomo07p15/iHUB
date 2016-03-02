class Ongoingcomment < ActiveRecord::Base
  belongs_to :user
  belongs_to :ongoing
end
