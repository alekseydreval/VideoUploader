require 'rails_helper'

RSpec.describe "videos/index", :type => :view do
  before(:each) do
    assign(:videos, [
      Video.create!(
        :content => "Content"
      ),
      Video.create!(
        :content => "Content"
      )
    ])
  end

  it "renders a list of videos" do
    render
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
