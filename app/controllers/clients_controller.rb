class ClientsController < ApplicationController
    def index
        render json: Client.all, status: :ok
    end

    def show
        client = find_client
        if client
            render json: client, include: [:memberships]
        else
            render json:{error: "Client not found"}, status: :not_found
        end
    end

    

    private 

    def find_client
        client = Client.find(params[:id])
    end

end