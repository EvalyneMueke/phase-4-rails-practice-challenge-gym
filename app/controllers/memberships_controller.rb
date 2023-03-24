class MembershipsController < ApplicationController

    def index
        render json: Membership.all, status: :ok
    end
    def create
        member = Membership.create(member_params)
        if member
            render json: member
        else
            render json: {error: "Member not created"}, status: :unprocessable_entity
        end
    end

    private
    def member_params
        params.permit(:gym_id, :client_id, :charge)
    end

end
