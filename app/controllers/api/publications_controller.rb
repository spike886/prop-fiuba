class Api::PublicationsController < ApiController
  before_action :set_property, only: [:show]

  # GET /publications.json
  def index
    @publications = Publication.all
    render json: @publications
  end

  # GET /publications/1.json
  def show
    render json: @publication
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_property
    @publication = Publication.find(params[:id])
  end
end
