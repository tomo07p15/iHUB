class Twig < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_one :feed_content, as: :content, dependent: :destroy

  after_create :create_feed_content

  private
  def create_feed_content
    self.feed_content = FeedContent.create(updated_at: :updated_at)
  end
end
