class ContentsController < ApplicationController

  layout 'admin'

  def index
    @contents = Content.all
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    @content = Content.find(params[:id])
    if @content.update(content_params)
      redirect_to contents_path
    else
      render 'edit'
    end
  end

  private

  def information_params
    params.require(:content).permit(:banner_title_1, :banner_content_1, :banner_title_2, :banner_content_2, :banner_title_3, :banner_content_3, :wrapper_title, :wrapper_description, :highlight_title_1, :highlight_content_1, :highlight_title_2, :highlight_content_2, :highlight_title_3, :highlight_content_3, :highlight_title_4, :highlight_content_4, :cta_title, :cta_content, :contact_title, :contact_content)
  end

end