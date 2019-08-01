require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :title => "MyString",
      :url => "MyString",
      :pic => "MyString",
      :intro => "MyText",
      :guide => "MyText"
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input[name=?]", "post[title]"

      assert_select "input[name=?]", "post[url]"

      assert_select "input[name=?]", "post[pic]"

      assert_select "textarea[name=?]", "post[intro]"

      assert_select "textarea[name=?]", "post[guide]"
    end
  end
end
