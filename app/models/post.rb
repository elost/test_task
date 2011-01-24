class Post < ActiveRecord::Base
  belongs_to :category
  has_many :votes, :dependent => :destroy

  validates_presence_of :title, :text, :category_id

  def voted_from_ip?(ip)
    self.votes.where(:user_ip => ip).any?
  end

  def rate_by(vote_rate)
    self.update_attribute(:rate, self.rate + vote_rate)
  end

end
