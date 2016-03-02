class Ongoing < ActiveRecord::Base
has_many :ongoingcomments
belongs_to :user
end
