class ClassifiedsController < ApplicationController
  
  before_action :authenticate_user!, only: [:new, :create]
  
  def index
  @classifieds = params[:q] ? Classified.search_for(params[:q]) : Classified.all
  end
  
  def new
  @classified = Classified.new
  end

  def show
  @classified = Classified.find params[:id]
  end
  
  def create
  @classified = current_user.classifieds.new classified_params
  
    if @classified.save
      redirect_to @story
    else
      render :new
    end
  end

  private
    def classified_params
      params.require(:classified).permit(:title, :description, :price, :category_id)
    end
end


#   def index
#     @stories = params[:q] ? Story.search_for(params[:q]) : Story.all
#   end

#   def new
#     @story = Story.new
#   end

#   def show
#     @story = Story.find params[:id]
#     @comment = @story.comments.new
#   end

#   def create
#     @story = current_user.stories.new story_params
#     @story.upvotes = 1

#     if @story.save
#       redirect_to @story
#     else
#       render :new
#     end
#   end

#   private
#   def story_params
#     params.require(:story).permit(:title, :link, :category)
#   end
# end