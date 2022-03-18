module Api
  module V1
    class CatalogsController < ApplicationController
      before_action :filter_by_search, only: [:index]
      def index
        @catalogs = @filtered_catalogs
        render json: @catalogs.to_json(only: %i[id title genre release_year country date_added description]), status: :ok
      end

      def import
        file = params[:file]
        ImportCatalogsService.new(file).call
        render(json: { message: "Activity Data Imported" }, status: :ok)
      end

      private

      def filter_by_search
        @filtered_catalogs = Catalog.order(release_year: :asc)
        return @filtered_catalogs unless params.present?

        @filtered_catalogs = @filtered_catalogs.where('genre like ?', "%#{params['genre'].capitalize}%") if params['genre'].present?
        @filtered_catalogs = @filtered_catalogs.where(release_year: params['release_year']) if params['release_year'].present?
        @filtered_catalogs = @filtered_catalogs.where('country like ?', "%#{params['country'].capitalize}%") if params['country'].present?
        @filtered_catalogs
      end
    end
  end
end
