class GymsController < ApplicationController

    def show
        gym = Gym.find_by(id: params[:id])
        if gym
            render json: gym, include: [:memberships]
        else
            render json: {error:"Gym not found"}, status: :not_found
        end
    end

        def destroy
            gym = Gym.find(params[:id])
            if gym
                gym.destroy
                head :no_content
            else
                render json: {error:"Gym not found"}, status: :not_found
            end
        end

    
end
