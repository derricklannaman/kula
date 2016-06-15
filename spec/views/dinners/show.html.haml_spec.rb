require 'rails_helper'

RSpec.describe "dinners/show", type: :view do
  before(:each) do
    @dinner = assign(:dinner, Dinner.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
