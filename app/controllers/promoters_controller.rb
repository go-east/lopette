class PromotersController < ApplicationController
before_action :find_promoter

  def index
    @promoters = Promoter.all
  end

  def show
    @referree = Referree.new
  end

  def new
    @promoter = Promoter.new
  end

  def create
    @promoter = Promoter.new(promoter_params)
    if @promoter.save
      redirect_to promoter_path(@promoter)
    else
      render :new
    end
  end

  private

  def find_promoter
    @promoter = Promoter.find(params[:id])
  end

  def promoter_params
    params.require(:promoter).permit(:firstname, :lastname, :email)
  end

end
