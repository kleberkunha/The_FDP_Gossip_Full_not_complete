class GossipsController < ApplicationController
  def new
    @gossip = Gossip.new
  end


  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], user: User.find_by_first_name("anonymous"))
    if @gossip.save
      redirect_to '/index'
      flash[:alert] = "Gossip Saved!!"
      
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    else
      render 'new'
    end

  end

end







