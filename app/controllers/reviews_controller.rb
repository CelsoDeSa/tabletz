class ReviewsController < InheritedResources::Base

  private

    def review_params
      params.require(:review).permit(:title, :url, :video, :pic, :rating, :pros, :cons, :summary, :description, :os, :camera, :storage, :display, :resolution, :battery, :ram, :weight)
    end

end
