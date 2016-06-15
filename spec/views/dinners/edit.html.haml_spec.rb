require 'rails_helper'

RSpec.describe "dinners/edit", type: :view do
  before(:each) do
    @dinner = assign(:dinner, Dinner.create!())
  end

  it "renders the edit dinner form" do
    render

    assert_select "form[action=?][method=?]", dinner_path(@dinner), "post" do
    end
  end
end
