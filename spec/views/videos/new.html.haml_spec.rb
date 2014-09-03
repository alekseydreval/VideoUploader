require 'rails_helper'

RSpec.describe "videos/new", :type => :view do
  before(:each) do
    assign(:video, Video.new(
      :content => "MyString"
    ))
  end

  it "renders new video form" do
    render

    assert_select "form[action=?][method=?]", videos_path, "post" do

      assert_select "input#video_content[name=?]", "video[content]"
    end
  end
end
