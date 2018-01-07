class TextsController < ApplicationController
  def create
    guide_id = params["guide"].to_i
    @guide = Guide.find_by(id:guide_id)
    @text = Text.new(text_params)
    @text.guide = @guide
    if @text.valid?
      @text.save
      redirect_to modules_guide_path(@guide)
    else
      render 'guides/modules'
    end
  end

  private

  def text_params
    params.require(:text).permit(:title, :paragraph)
  end

end
