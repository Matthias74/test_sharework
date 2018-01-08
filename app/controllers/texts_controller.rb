class TextsController < ApplicationController

  def create
    guide_id = params["guide"].to_i
    @guide = Guide.find_by(id:guide_id)
    @text = Text.new(text_params)
    @text.guide = @guide
    #the following lne is mandatory: in case of error, if this line does't exist, it is impossuble to render the guides module
    @document = Document.new
    ######
    if @text.valid?
      @text.save
      redirect_to modules_guide_path(@guide)
    else
      render 'guides/modules'
    end
  end

  def sort
    params["text"].each_with_index do |id, index|
       Text.where(id: id).update_all(position: index + 1)
    end

    head :ok
  end

  private

  def text_params
    params.require(:text).permit(:title, :paragraph)
  end

end
