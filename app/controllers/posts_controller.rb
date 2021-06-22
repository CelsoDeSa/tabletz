class PostsController < InheritedResources::Base
  before_action :authenticate_admin_user!, only: [:new, :edit, :update, :destroy]
  before_action :find_by_url, only: [:show]

  def find_by_url
    @post = Post.find_by(url: params[:url])

    if @post
      @post
    else
      redirect_to "/"
    end
  end

  private

    def post_params
      params.require(:post).permit(:title, :url, :pic, :intro, :highlights, :guide, review_ids: [])
    end

end
