require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe DinnersController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Dinner. As you add validations to Dinner, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DinnersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all dinners as @dinners" do
      dinner = Dinner.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:dinners)).to eq([dinner])
    end
  end

  describe "GET #show" do
    it "assigns the requested dinner as @dinner" do
      dinner = Dinner.create! valid_attributes
      get :show, {:id => dinner.to_param}, valid_session
      expect(assigns(:dinner)).to eq(dinner)
    end
  end

  describe "GET #new" do
    it "assigns a new dinner as @dinner" do
      get :new, {}, valid_session
      expect(assigns(:dinner)).to be_a_new(Dinner)
    end
  end

  describe "GET #edit" do
    it "assigns the requested dinner as @dinner" do
      dinner = Dinner.create! valid_attributes
      get :edit, {:id => dinner.to_param}, valid_session
      expect(assigns(:dinner)).to eq(dinner)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Dinner" do
        expect {
          post :create, {:dinner => valid_attributes}, valid_session
        }.to change(Dinner, :count).by(1)
      end

      it "assigns a newly created dinner as @dinner" do
        post :create, {:dinner => valid_attributes}, valid_session
        expect(assigns(:dinner)).to be_a(Dinner)
        expect(assigns(:dinner)).to be_persisted
      end

      it "redirects to the created dinner" do
        post :create, {:dinner => valid_attributes}, valid_session
        expect(response).to redirect_to(Dinner.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved dinner as @dinner" do
        post :create, {:dinner => invalid_attributes}, valid_session
        expect(assigns(:dinner)).to be_a_new(Dinner)
      end

      it "re-renders the 'new' template" do
        post :create, {:dinner => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested dinner" do
        dinner = Dinner.create! valid_attributes
        put :update, {:id => dinner.to_param, :dinner => new_attributes}, valid_session
        dinner.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested dinner as @dinner" do
        dinner = Dinner.create! valid_attributes
        put :update, {:id => dinner.to_param, :dinner => valid_attributes}, valid_session
        expect(assigns(:dinner)).to eq(dinner)
      end

      it "redirects to the dinner" do
        dinner = Dinner.create! valid_attributes
        put :update, {:id => dinner.to_param, :dinner => valid_attributes}, valid_session
        expect(response).to redirect_to(dinner)
      end
    end

    context "with invalid params" do
      it "assigns the dinner as @dinner" do
        dinner = Dinner.create! valid_attributes
        put :update, {:id => dinner.to_param, :dinner => invalid_attributes}, valid_session
        expect(assigns(:dinner)).to eq(dinner)
      end

      it "re-renders the 'edit' template" do
        dinner = Dinner.create! valid_attributes
        put :update, {:id => dinner.to_param, :dinner => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested dinner" do
      dinner = Dinner.create! valid_attributes
      expect {
        delete :destroy, {:id => dinner.to_param}, valid_session
      }.to change(Dinner, :count).by(-1)
    end

    it "redirects to the dinners list" do
      dinner = Dinner.create! valid_attributes
      delete :destroy, {:id => dinner.to_param}, valid_session
      expect(response).to redirect_to(dinners_url)
    end
  end

end
