class CalendersController < ApplicationController
  def index
    @calender_items = Calender.all
  end
  
  def new
    @calender_item = Calender.new
    3.times { @calender_item.technologies.build }
  end
  
  def create
    @calender_item = Calender.new(calender_params)

    respond_to do |format|
      if @calender_item.save
        format.html { redirect_to calenders_path, notice: 'Calender item was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  
  def edit
    @calender_item = Calender.find(params[:id])
  end
  
  def update
    @calender_item = Calender.find(params[:id])
    respond_to do |format|
      if @calender_item.update(calender_params)
        format.html { redirect_to calenders_path, notice: 'Calender was successfully updated.' }
            else
        format.html { render :edit }
      end
    end
  end
  
  def show
    @calender_item = Calender.find(params[:id])
  end
  
  def destroy 
    @calender_item = Calender.find(params[:id])
    @calender_item.destroy
    respond_to do |format|
      format.html { redirect_to calenders_url, notice: 'Calender was successfully destroyed.' }
    end
  end
  
  private 
    # Never trust parameters from the scary internet, only allow the white list through.
    def calender_params
      params.require(:calender).permit(:title, :subtitle, :body, technologies_attributes: [:name])
    end  
end
