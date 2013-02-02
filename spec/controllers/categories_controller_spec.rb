require 'spec_helper'

describe CategoriesController do

  def attributes
    {name: "Category name"}
  end
  context "#index" do

    it "assign @categories the list of categories" do
      categories_all = Category.all
      get :index
      assigns(:categories).should eq(categories_all)
    end

  end

  context "#new" do
    it "assigs a new category as @category" do
      get :new
      assigns(:category).should be_a_new(Category)
    end
  end

  context "#create" do
    it "creates a new category" do
      expect{
        post :create, category: attributes
      }.to change(Category, :count).by(1)
    end

    it "re-render to new action if doesnt save" do
      Category.any_instance.stub(:save).and_return(false)
      post :create, category: attributes
      response.should render_template("new")
    end
  end

  context "#edit" do
    it "assings the requested category as @category" do
      category = Category.create!(attributes)
      get :edit, id: category.id
      assigns(:category).should eq(category)
    end
  end

  context "#update" do
    let(:category) {Category.create!(attributes)}
    
    it "updates the requrested category" do
      put :update, id: category.id, category: {name: "Category name updated"}
      category_updated = Category.find(category.id)
      category_updated.name.should == "Category name updated" 
    end

    it "re-render to edit action if doesn't update" do
      Category.any_instance.stub(:update_attributes).and_return(false)
      put :update, id: category.id, category: {name: "Category name updated"}
      response.should render_template("edit")
    end
  end

  context "#destroy" do
    it "destroys a requested category" do
      category = Category.create!(attributes)
      expect{
        delete :destroy, id: category.id
      }.to change(Category, :count).by(-1)
    end
  end
end