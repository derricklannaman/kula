require 'rails_helper'

RSpec.describe "dinners/index", type: :view do
  before(:each) do
    assign(:dinners, [
      Dinner.create!(),
      Dinner.create!()
    ])
  end

  it "renders a list of dinners" do
    render
  end
end
