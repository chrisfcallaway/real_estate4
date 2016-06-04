class FeedbacksController < ApplicationController
  def index
    @feedbacks = Feedback.all
  end

  def show
    @feedback = Feedback.find(params[:id])
  end

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new
    @feedback.proposal_id = params[:proposal_id]
    @feedback.body = params[:body]
    @feedback.user_id = params[:user_id]

    if @feedback.save
      redirect_to "/feedbacks", :notice => "Feedback created successfully."
    else
      render 'new'
    end
  end

  def edit
    @feedback = Feedback.find(params[:id])
  end

  def update
    @feedback = Feedback.find(params[:id])

    @feedback.proposal_id = params[:proposal_id]
    @feedback.body = params[:body]
    @feedback.user_id = params[:user_id]

    if @feedback.save
      redirect_to "/feedbacks", :notice => "Feedback updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @feedback = Feedback.find(params[:id])

    @feedback.destroy

    redirect_to "/feedbacks", :notice => "Feedback deleted."
  end
end
