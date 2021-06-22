class ReviewsController < InheritedResources::Base
  before_action :authenticate_admin_user!, only: [:new, :edit, :update, :destroy]
  before_action :find_by_url, only: [:show, :index]

  def find_by_url
    device = params[:device] =~ /s$/ ? params[:device].gsub(/s$/, "") : params[:device]
    @review = Review.find_by(device: params[:device], url: params[:url]) || Review.find_by(id: params[:id])
    @reviews = Review.all.where(device: params[:device])

    if @review
      @review
    elsif device != params[:device]
      redirect_to "/#{device}/#{params[:url]}"
    elsif @reviews
      @reviews
    else
      redirect_to "/"
    end
  end

  private

    def review_params
      params.require(:review)
        .permit(
          :device, 
          :title, 
          :url, 
          :video, 
          :video_start, 
          :video_end, 
          :pic, 
          :buy_on_amazon, 
          :buy_on_americanas,
          :buy_on_submarino,
          :buy_on_shoptime,
          :buy_on_magalu,
          :rating, 
          :pros, 
          :cons, 
          :summary, 
          :description, 
          :os, 
          :camera, 
          :storage, 
          :display, 
          :resolution, 
          :battery, 
          :ram, 
          :weight, 
          :backlight, 
          :touchscreen, 
          :colors, 
          :connection, 
          :cpu, 
          :extras
        )
    end

end
