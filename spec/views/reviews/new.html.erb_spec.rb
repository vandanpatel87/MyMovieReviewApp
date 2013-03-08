require 'spec_helper'

describe "reviews/new" do
  before(:each) do
    assign(:review, stub_model(Review,
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new review form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", reviews_path, "post" do
      assert_select "input#review_name[name=?]", "review[name]"
      assert_select "input#review_description[name=?]", "review[description]"
    end
  end
end
