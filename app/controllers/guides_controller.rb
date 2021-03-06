class GuidesController < ApplicationController

  def new
      @guide = Guide.new
  end

  def create
    @guide = Guide.new(guide_params)
    if @guide.valid?
    @guide.save
    redirect_to modules_guide_path(@guide)
    else
      render :new
    end
  end

  def modules
    @guide = Guide.find(params[:id])
    @text = Text.new
    @document = Document.new
  end

  def show
    @guide = Guide.find(params[:id])
  end

  private

  def guide_params
    params.require(:guide).permit(:title, :subtitle)
  end
end
