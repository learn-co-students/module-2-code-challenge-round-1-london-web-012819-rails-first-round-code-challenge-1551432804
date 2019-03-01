class HeroinesController < ApplicationController
  def index
  #   p = Power.where('name LIKE ?', "%#{params[:power]}%")
  #   power = Heroine.where(:power_id == p.ids[0])
  #   if params[:power]
  #   @heroines = Heroine.find(power)
  # else
    @heroines = Heroine.all
  # end
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.save
      redirect_to @heroine
    else
      render :new
    end
  end



  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id, :power)
  end
end
