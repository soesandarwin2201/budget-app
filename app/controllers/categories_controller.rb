class CategoriesController < ApplicationController
  def index
    @categories = current_user.categories
  end

  def new 
    @category = Category.new
    respond_to do |format|
      format.html { render :new, locals: { category: @category } }
    end
  end

  def create 
    @category = Category.new(strong_params.merge(user_id: current_user.id))
    respond_to do |format|
      format.html do 
        if @category.save!
          flash[:success] = 'category saved successfully'
          redirect_to Something_path
        else 
         flash.now[:error] = 'Error: category could not be saved'
         render :new, locals: { category: @category}
        end
      end
    end
  end
 
  priv:after =>  column_name
  def strong_params
    params.require(:category).permit(:name, :icon)
  end

end