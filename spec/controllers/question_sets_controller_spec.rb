require 'spec_helper'

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

describe QuestionSetsController do

  # This should return the minimal set of attributes required to create a valid
  # QuestionSet. As you add validations to QuestionSet, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all question_sets as @question_sets" do
      interview = QuestionSet.create! valid_attributes
      get :index
      assigns(:question_sets).should eq([interview])
    end
  end

  describe "GET show" do
    it "assigns the requested questionset as @questionset" do
      interview = QuestionSet.create! valid_attributes
      get :show, :id => interview.id.to_s
      assigns(:questionset).should eq(interview)
    end
  end

  describe "GET new" do
    it "assigns a new questionset as @questionset" do
      get :new
      assigns(:questionset).should be_a_new(QuestionSet)
    end
  end

  describe "GET edit" do
    it "assigns the requested questionset as @questionset" do
      interview = QuestionSet.create! valid_attributes
      get :edit, :id => interview.id.to_s
      assigns(:questionset).should eq(interview)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new QuestionSet" do
        expect {
          post :create, :questionset => valid_attributes
        }.to change(QuestionSet, :count).by(1)
      end

      it "assigns a newly created questionset as @questionset" do
        post :create, :questionset => valid_attributes
        assigns(:questionset).should be_a(QuestionSet)
        assigns(:questionset).should be_persisted
      end

      it "redirects to the created questionset" do
        post :create, :questionset => valid_attributes
        response.should redirect_to(QuestionSet.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved questionset as @questionset" do
        # Trigger the behavior that occurs when invalid params are submitted
        QuestionSet.any_instance.stub(:save).and_return(false)
        post :create, :questionset => {}
        assigns(:questionset).should be_a_new(QuestionSet)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        QuestionSet.any_instance.stub(:save).and_return(false)
        post :create, :questionset => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested questionset" do
        interview = QuestionSet.create! valid_attributes
        # Assuming there are no other question_sets in the database, this
        # specifies that the QuestionSet created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        QuestionSet.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => interview.id, :questionset => {'these' => 'params'}
      end

      it "assigns the requested questionset as @questionset" do
        interview = QuestionSet.create! valid_attributes
        put :update, :id => interview.id, :questionset => valid_attributes
        assigns(:questionset).should eq(interview)
      end

      it "redirects to the questionset" do
        interview = QuestionSet.create! valid_attributes
        put :update, :id => interview.id, :questionset => valid_attributes
        response.should redirect_to(interview)
      end
    end

    describe "with invalid params" do
      it "assigns the questionset as @questionset" do
        interview = QuestionSet.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        QuestionSet.any_instance.stub(:save).and_return(false)
        put :update, :id => interview.id.to_s, :questionset => {}
        assigns(:questionset).should eq(interview)
      end

      it "re-renders the 'edit' template" do
        interview = QuestionSet.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        QuestionSet.any_instance.stub(:save).and_return(false)
        put :update, :id => interview.id.to_s, :questionset => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested questionset" do
      interview = QuestionSet.create! valid_attributes
      expect {
        delete :destroy, :id => interview.id.to_s
      }.to change(QuestionSet, :count).by(-1)
    end

    it "redirects to the question_sets list" do
      interview = QuestionSet.create! valid_attributes
      delete :destroy, :id => interview.id.to_s
      response.should redirect_to(interviews_url)
    end
  end

end
