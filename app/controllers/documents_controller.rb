class DocumentsController < ApplicationController

  def create
    guide_id = params["guide"].to_i
    @guide = Guide.find_by(id:guide_id)
    @document = Document.new(document_params)
    @document.guide = @guide
    #the following lne is mandatory: in case of error, if this line does't exist, it is impossuble to render the guides module
    @text = Text.new
    ######
    
    if @document.valid?
      @document.save
      redirect_to modules_guide_path(@guide)
    else
      render 'guides/modules'
    end
  end

  private

  def document_params
    params.require(:document).permit(:title, :description, :file, :file_cache)
  end
end
