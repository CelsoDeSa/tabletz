require 'rails_helper'

RSpec.describe "reviews/new", type: :view do
  before(:each) do
    assign(:review, Review.new(
      :title => "MyString",
      :url => "MyString",
      :video => "MyString",
      :pic => "MyString",
      :rating => 1,
      :pros => "MyText",
      :cons => "MyText",
      :summary => "MyText",
      :description => "MyText",
      :os => "MyString",
      :camera => "MyString",
      :storage => "MyString",
      :display => "MyString",
      :resolution => "MyString",
      :battery => "MyString",
      :ram => "MyString",
      :weight => "MyString"
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input[name=?]", "review[title]"

      assert_select "input[name=?]", "review[url]"

      assert_select "input[name=?]", "review[video]"

      assert_select "input[name=?]", "review[pic]"

      assert_select "input[name=?]", "review[rating]"

      assert_select "textarea[name=?]", "review[pros]"

      assert_select "textarea[name=?]", "review[cons]"

      assert_select "textarea[name=?]", "review[summary]"

      assert_select "textarea[name=?]", "review[description]"

      assert_select "input[name=?]", "review[os]"

      assert_select "input[name=?]", "review[camera]"

      assert_select "input[name=?]", "review[storage]"

      assert_select "input[name=?]", "review[display]"

      assert_select "input[name=?]", "review[resolution]"

      assert_select "input[name=?]", "review[battery]"

      assert_select "input[name=?]", "review[ram]"

      assert_select "input[name=?]", "review[weight]"
    end
  end
end
