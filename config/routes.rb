Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resource :catalogs, only: [:index]
    end
  end
end
