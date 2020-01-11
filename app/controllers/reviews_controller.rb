class ReviewsController < InheritedResources::Base
  before_action :authenticate_admin_user!, only: [:new, :edit, :update, :destroy]
  before_action :find_by_url, only: :show

  def find_by_url
    @review = Review.find_by(device: params[:device], url: params[:url]) || Review.find_by(id: params[:id])

    if @review
      @review
    else
      redirect_to '/'
    end
  end

  private

    def review_params
      params.require(:review).permit(:device, :title, :url, :video, :video_start, :video_end, :pic, :buy_on_amazon, :rating, :pros, :cons, :summary, :description, :os, :camera, :storage, :display, :resolution, :battery, :ram, :weight, :backlight, :touchscreen, :colors, :connection, :cpu, :extras)
    end

end
