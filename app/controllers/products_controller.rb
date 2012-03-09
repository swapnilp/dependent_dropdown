class ProductsController < ApplicationController
  def index
   # @productes = Product.find(:all)
  end
  
  def new   
    @products = Product.find(:all)
    @product = Product.new
  end
  
  def show
    # @product = Product.new
  end
  
  def create
    if params[:product_id] != ""
      if params[:subproduct_id] != ""
        Subsubproduct.new(:subproduct_id => params[:subproduct_id], :name => params[:name]).save
        puts "sub product given"
      else
        Subproduct.new(:product_id => params[:product_id], :name => params[:name]).save
      end
    else
      Product.new(:name => params[:name]).save
    end
    redirect_to products_path
    # render :new
  end
  
  def find
    begin
      @paths = Product.find_by_name(params[:product1]).name
    rescue
      begin
        subproduct = Subproduct.find_by_name(params[:product1])
        @paths = subproduct.product.name + " >> " + subproduct.name
      rescue
        begin
          subsubproduct = Subsubproduct.find_by_name(params[:product1])
          @paths = subsubproduct.subproduct.product.name + " >> " + subsubproduct.subproduct.name + " >> " + subsubproduct.name
        rescue
          @paths = 'paths not found'
        end
      end
    end
    #redirect_to products_path
    # @paths = params[:product1].downcas
     render :action => "show"
  end

  def update_subproduct_select
    # @states = State.where(:countries_id => 1).order(:name) unless params[:id].blank?
    subproducts = Subproduct.find(:all, :conditions => {:product_id => params[:id]})
    render :partial => "subproduct", :locals => { :subproduct => subproducts }
  end
  def update_subsubproduct_select
    # @states = State.where(:countries_id => 1).order(:name) unless params[:id].blank?
    subsubproducts = Subproduct.find(:all, :conditions => {:subproduct_id => params[:id]})
    render :partial => "subsubproduct", :locals => { :subsubproduct => subsubproducts }
  end
  
end
