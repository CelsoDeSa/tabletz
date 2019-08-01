require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :title => "Title",
      :url => "Url",
      :pic => "Pic",
      :intro => "MyText",
      :guide => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Pic/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
