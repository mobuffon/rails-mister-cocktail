class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(params_dose)
    @dose.cocktail_id = @cocktail.id

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end

  end

  def destroy
    @cocktail = Cocktail.find(params[:cocktail_id])
    dose = Dose.where(id: params[:id])
    dose.delete_all
    redirect_to cocktail_path(@cocktail)
  end

  private

  def params_dose
    params.require('dose').permit(:description, :ingredient_id, :cocktail_id)
  end
end
