class PostsController < InheritedResources::Base
  before_action :authenticate_admin_user!, only: [:new, :update, :destroy]
  before_action :find_by_url

  def find_by_url
    @post = Post.find_by(url: params[:url])
  end

  private

    def post_params
      params.require(:post).permit(:title, :url, :pic, :intro, :guide, review_ids: [])
    end

end
