module Api
  module V1
    class CatalogsController < ApplicationController
      def index
      @catalogs = Catalog.all
      render json: @catalogs.to_json(only: %i[id title genre release_year country date_added description]), status: :ok
      end

      def import
        file = params[:file]
        ImportCatalogsService.new(file).call
        redirect_to api_v1_catalogs_path, notice: "Activity Data Imported"
      end
    end
  end
end
