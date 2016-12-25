class PoemsController < ApplicationController
  def index
    @poems = Poem.all
    render json: @poems
  end
  def show
    @poems = Poem.find(params[:id])
    render json: @poems
  end

  private
  def poemss_params
    params.require(:poem).permit(:title, :content)
  end
end
