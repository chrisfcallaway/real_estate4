class ProposalsController < ApplicationController
  def index
    @proposals = Proposal.all
  end

  def show
    @proposal = Proposal.find(params[:id])
  end

  def new
    @proposal = Proposal.new
  end

  def create
    @proposal = Proposal.new
    @proposal.property_id = params[:property_id]
    @proposal.store_name = params[:store_name]
    @proposal.description = params[:description]
    @proposal.square_feet = params[:square_feet]
    @proposal.nearest = params[:nearest]
    @proposal.bid = params[:bid]
    @proposal.architectural = params[:architectural]
    @proposal.text = params[:text]
    @proposal.image = params[:image]
    @proposal.user_id = params[:user_id]

    if @proposal.save
      redirect_to "/proposals", :notice => "Proposal created successfully."
    else
      render 'new'
    end
  end

  def edit
    @proposal = Proposal.find(params[:id])
  end

  def update
    @proposal = Proposal.find(params[:id])

    @proposal.property_id = params[:property_id]
    @proposal.store_name = params[:store_name]
    @proposal.description = params[:description]
    @proposal.square_feet = params[:square_feet]
    @proposal.nearest = params[:nearest]
    @proposal.bid = params[:bid]
    @proposal.architectural = params[:architectural]
    @proposal.text = params[:text]
    @proposal.image = params[:image]
    @proposal.user_id = params[:user_id]

    if @proposal.save
      redirect_to "/proposals", :notice => "Proposal updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @proposal = Proposal.find(params[:id])

    @proposal.destroy

    redirect_to "/proposals", :notice => "Proposal deleted."
  end
end
