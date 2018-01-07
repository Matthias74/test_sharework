class GuidesController < ApplicationController

  def new
      @guide = Guide.new
  end

  def create
    @guide = Guide.new(guide_params)
    if @guide.valid?
    @guide.save
    redirect_to root_path
    else
      render :new
    end
  end

  def guide_params
    params.require(:guide).permit(:title, :subtitle)
  end
end
