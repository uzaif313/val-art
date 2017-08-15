class ArtsController < ApplicationController
  before_action :set_art, only: [:show, :edit, :update, :destroy]

  def index
    @arts = Art.all
    authorize @arts
  end

  def show
  end

  def new
    @art = Art.new
  end

  def edit
  end

  def create
    @art = current_user.arts.build(art_params)
    if @art.save!
      redirect_to @art, notice: 'Art was successfully created.'
    else
      render :new
    end
  end

  def update
    if @art.update(art_params)
      redirect_to @art, notice: 'Art was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @art.destroy
    redirect_to arts_url, notice: 'Art was successfully destroyed.'
  end

  private
    def set_art
      @art = Art.find(params[:id])
      authorize @art
    end

    def art_params
      params.require(:art).permit(:image, :descrption)
    end
end
