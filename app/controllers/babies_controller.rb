class BabiesController < ApplicationController
  def new
    @baby = Baby.new
  end

  def create
    render nothing: true
  end

  def edit
    @baby = Baby.find(params[:id])
  end

  def update
    strong_params = params.require(:baby).permit(:first_name, :last_name, :weight, :birth_date)
    @baby = Baby.find(params[:id])
    @baby.update(strong_params)
    @baby.update(birth_date: "15-15")
    @baby.save
    @baby
    render nothing: true
  end
end
