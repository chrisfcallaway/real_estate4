class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def show
    @property = Property.find(params[:id])
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new
    @property.description = params[:description]
    @property.square_feet = params[:square_feet]
    @property.intended_use = params[:intended_use]
    @property.asking_price = params[:asking_price]
    @property.user_id = params[:user_id]

    if @property.save
      redirect_to "/properties", :notice => "Property created successfully."
    else
      render 'new'
    end
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
    @property = Property.find(params[:id])

    @property.description = params[:description]
    @property.square_feet = params[:square_feet]
    @property.intended_use = params[:intended_use]
    @property.asking_price = params[:asking_price]
    @property.user_id = params[:user_id]

    if @property.save
      redirect_to "/properties", :notice => "Property updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @property = Property.find(params[:id])

    @property.destroy

    redirect_to "/properties", :notice => "Property deleted."
  end
end
