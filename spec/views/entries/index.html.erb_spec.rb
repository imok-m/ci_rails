require 'rails_helper'

RSpec.describe "entries/index", type: :view do
  before(:each) do
    assign(:entries, [
      Entry.create!(
        :title => "Title",
        :body => "Body"
      ),
      Entry.create!(
        :title => "Title",
        :body => "Body"
      )
    ])
  end

  it "renders a list of entries" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Body".to_s, :count => 2
  end
end
