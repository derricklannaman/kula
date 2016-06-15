require 'rails_helper'

RSpec.describe "dinners/new", type: :view do
  before(:each) do
    assign(:dinner, Dinner.new())
  end

  it "renders new dinner form" do
    render

    assert_select "form[action=?][method=?]", dinners_path, "post" do
    end
  end
end
