class Api::V1::PetsController < ApplicationController

    def index 
        @pets = Pets.all 
        render json: @pets 
    end

    def create 
        @pet = Pet.new(pet_params)
        if @pet.save
            render json: @pet 
        else 
            render json: { error: 'Please try again- an error has occurred' }
        end
    end

    def show 
        @pet = Pet.find_by_id(params[:id])
        render json: @pet 
    end

    def update 
        @pet = Pet.update(pet_params)
        render json: @pet 
    end

    def destroy 
        @pet = Pet.find_by_id(params[:id])
        @pet.destroy
        render json: { pet_id: pet.id }
    end

    private

    def pet_params
        params.require(:pets).permit(:name, :kind, :gender, :age, :born, :passed, :bio, :quote, :image)
    end
end
