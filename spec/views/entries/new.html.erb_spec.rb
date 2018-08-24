require 'rails_helper'

RSpec.describe "entries/new", type: :view do
  before(:each) do
    assign(:entry, Entry.new(
      :title => "MyString",
      :body => "MyString"
    ))
  end

  it "renders new entry form" do
    render

    assert_select "form[action=?][method=?]", entries_path, "post" do

      assert_select "input[name=?]", "entry[title]"

      assert_select "input[name=?]", "entry[body]"
    end
  end
end
