class DosesController < ApplicationController

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @ingredient = Ingredient.find(dose_params[:ingredient_id])
    @cocktail = Cocktail.find(params[:cocktail_id])
    Dose.create(cocktail: @cocktail, ingredient: @ingredient, description: dose_params[:description])
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktali)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
