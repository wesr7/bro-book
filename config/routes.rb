Rails.application.routes.draw do
    namespace :api do
        namespace :v1 do
            resources :hobbies, except: [:new, :edit]
            resources :bros, except: [:new, :edit]
        end
    end
end
