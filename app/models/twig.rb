class Twig < ActiveRecord::Base
  belongs_to :user
  has_many :twigcomments
end
