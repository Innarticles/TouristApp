class ToursiteController < ApplicationController
	 before_action :set_site, only: []
  def admin
  end

  def new
  	@site = Site.new
  end

  def show
  end

   def view
  	@sites = Site.all
  end

  def create
    @site = Site.new(site_params)

    respond_to do |format|
      if @site.save
        format.html { redirect_to toursite_admin_path, notice: 'site was successfully created.' }
        format.json { render :show, status: :created, location: @site }
      else
        format.html { render :new }
        format.json { render json: @site.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site
      @site = Site.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_params
      params.require(:site).permit(:site_name, :contact, :description, :address)
    end
end

