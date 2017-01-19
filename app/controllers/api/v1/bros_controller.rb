module Api
    module V1
        class BrosController < ApplicationController
            def index
                render json: Bro.includes(:hobbies), include: ['hobbies']
            end
        end
    end
end