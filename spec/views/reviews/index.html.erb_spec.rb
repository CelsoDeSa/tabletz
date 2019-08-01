require 'rails_helper'

RSpec.describe "reviews/index", type: :view do
  before(:each) do
    assign(:reviews, [
      Review.create!(
        :title => "Title",
        :url => "Url",
        :video => "Video",
        :pic => "Pic",
        :rating => 2,
        :pros => "MyText",
        :cons => "MyText",
        :summary => "MyText",
        :description => "MyText",
        :os => "Os",
        :camera => "Camera",
        :storage => "Storage",
        :display => "Display",
        :resolution => "Resolution",
        :battery => "Battery",
        :ram => "Ram",
        :weight => "Weight"
      ),
      Review.create!(
        :title => "Title",
        :url => "Url",
        :video => "Video",
        :pic => "Pic",
        :rating => 2,
        :pros => "MyText",
        :cons => "MyText",
        :summary => "MyText",
        :description => "MyText",
        :os => "Os",
        :camera => "Camera",
        :storage => "Storage",
        :display => "Display",
        :resolution => "Resolution",
        :battery => "Battery",
        :ram => "Ram",
        :weight => "Weight"
      )
    ])
  end

  it "renders a list of reviews" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Video".to_s, :count => 2
    assert_select "tr>td", :text => "Pic".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Os".to_s, :count => 2
    assert_select "tr>td", :text => "Camera".to_s, :count => 2
    assert_select "tr>td", :text => "Storage".to_s, :count => 2
    assert_select "tr>td", :text => "Display".to_s, :count => 2
    assert_select "tr>td", :text => "Resolution".to_s, :count => 2
    assert_select "tr>td", :text => "Battery".to_s, :count => 2
    assert_select "tr>td", :text => "Ram".to_s, :count => 2
    assert_select "tr>td", :text => "Weight".to_s, :count => 2
  end
end
