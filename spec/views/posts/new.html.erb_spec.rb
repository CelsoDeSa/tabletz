require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      :title => "MyString",
      :url => "MyString",
      :pic => "MyString",
      :intro => "MyText",
      :guide => "MyText"
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input[name=?]", "post[title]"

      assert_select "input[name=?]", "post[url]"

      assert_select "input[name=?]", "post[pic]"

      assert_select "textarea[name=?]", "post[intro]"

      assert_select "textarea[name=?]", "post[guide]"
    end
  end
end
