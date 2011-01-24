class VotesController < ApplicationController
  def create
    vote_up_rate = 1
    vote_down_rate = -1

    ip = request.remote_ip
    post = Post.find(params[:post_id])
    
    unless post.voted_from_ip?(ip)
      vote = post.votes.build(:user_ip => ip)
      vote.save
      if params[:vote_up]
        post.rate_by(vote_up_rate)
      elsif params[:vote_down]
        post.rate_by(vote_down_rate)
      end
    end
    @post = Post.find(params[:post_id])
  
  end

end
