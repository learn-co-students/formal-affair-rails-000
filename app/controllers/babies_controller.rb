class BabiesController < ApplicationController
  def new
    @baby = Baby.new
  end

  def create
    render nothing: true
  end


  #def create
  # @baby = Baby.new(baby_params)

   # respond_to do |format|
   #   if @baby.save
   #     format.html { redirect_to @baby, notice: 'Baby was successfully created.' }
   #     format.json { render :create, status: :created, location: @baby }
   #   else
   #     format.html { render :new }
   #     format.json { render json: @baby.errors, status: :unprocessable_entity }
   #   end
   # end
  #end

  def edit
    @baby = Baby.find(params[:id])
  end

  def update
    render nothing: true
  end

  def show
    @baby = Baby.find(params[:id])
  end


  def baby_params
          params.require(:baby).permit(:first_name, :last_name, :weight, :birth_date)
  end
end
