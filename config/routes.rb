Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resource :catalogs do
        collection do
          get :index
          post :import
        end
      end
    end
  end
end
