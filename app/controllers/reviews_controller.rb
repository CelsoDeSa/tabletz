class ReviewsController < InheritedResources::Base
  before_action :find_by_url

  def find_by_url
    @review = Review.find_by(url: params[:url])
  end

  private

    def review_params
      params.require(:review).permit(:title, :url, :video, :pic, :buy_on_amazon, :rating, :pros, :cons, :summary, :description, :os, :camera, :storage, :display, :resolution, :battery, :ram, :weight)
    end

end
