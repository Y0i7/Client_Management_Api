class ClientsController < ApplicationController
  def index
    clients = Client.all
    render json: clients
  end

  def show
    client = Client.find(params[:id])
    render json: client
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Client not found" }, status: :not_found
  end

  def create
    client = Client.new(client_params)
    if client.save
      render json: client, status: :created
    else
      render json: client.errors, status: :unprocessable_entity
    end
  end

  def update
    client = Client.find(params[:id])
    if client.update(client_params)
      render json: client
    else
      render json: client.errors, status: :unprocessable_entity
    end
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Client not found" }, status: :not_found
  end

  def destroy
    client = Client.find(params[:id])
    client.destroy
    head :no_content
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Client not found" }, status: :not_found
  end

  private

  def client_params
    params.require(:client).permit(:user_name, :password, :email)
  end
end
