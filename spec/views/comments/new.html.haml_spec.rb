require 'rails_helper'

RSpec.describe "comments/new", :type => :view do
  before(:each) do
    assign(:comment, Comment.new(
      :user_id => 1,
      :video_id => 1
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input#comment_user_id[name=?]", "comment[user_id]"

      assert_select "input#comment_video_id[name=?]", "comment[video_id]"
    end
  end
end
