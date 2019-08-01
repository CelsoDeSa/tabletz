require 'rails_helper'

RSpec.describe "reviews/show", type: :view do
  before(:each) do
    @review = assign(:review, Review.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Video/)
    expect(rendered).to match(/Pic/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Os/)
    expect(rendered).to match(/Camera/)
    expect(rendered).to match(/Storage/)
    expect(rendered).to match(/Display/)
    expect(rendered).to match(/Resolution/)
    expect(rendered).to match(/Battery/)
    expect(rendered).to match(/Ram/)
    expect(rendered).to match(/Weight/)
  end
end
