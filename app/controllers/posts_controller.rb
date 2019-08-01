class PostsController < InheritedResources::Base

  private

    def post_params
      params.require(:post).permit(:title, :url, :pic, :intro, :guide)
    end

end
