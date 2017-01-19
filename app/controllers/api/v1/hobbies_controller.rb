module Api
    module V1
        class HobbiesController < ApplicationController
            def index
                render json: Hobby.includes(:bros), include: ['bros']
            end
        end
    end
end
