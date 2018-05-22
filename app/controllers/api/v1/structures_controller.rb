class Api::V1::StructuresController < ApplicationController
  before_action :set_structure,  only: [:show]


  def index
    render json: Structure.all
  end

  def show
    render json: @structure
  end

  private

  def set_structure
    @structure = Structure.find(params[:id])
  end

end
