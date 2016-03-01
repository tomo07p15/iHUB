class Comment < ActiveRecord::Base
  belongs_to :twig
  belongs_to :user
end
