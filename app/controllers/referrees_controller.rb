class ReferreesController < ApplicationController
  before_action :find_promoter, only: [:new, :create]

  def new
    @review = Referree.new
  end

  def create
    @review = @promoter.referrees.build(referree_params)
    @review.save
    redirect_to promoter_path(@promoter)
  end

private

  def referree_params
    params.require(:referree).permit(:email)
  end

  def find_promoter
    @promoter = Promoter.find(params[:promoter_id])
  end

end
