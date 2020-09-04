class Api::V1::MemoriesController < ApplicationController

    before_action :set_pet

    def index 
        @memories = @pet.memories 
        render json: @memories 
    end

    def create 
        @memory = @pet.memories.build(memory_params)
        if @memory.save
            render json: @memory 
        else 
            render json: { error: 'Please try again- an error has occurred' }
        end
    end

    def show 
        @memory = Memory.find_by_id(params[:id])
        render json: @memory 
    end

    def update 
        @memory = Memory.update(memory_params)
        render json: @memory 
    end

    def destroy 
        @memory = Memory.find_by_id(params[:id])
        @memory.destroy
        render json: { memory_id: memory.id }
    end

    private

    def set_pet
        @pet = Pet.find_by_id(params[:pet_id])
    end

    def memory_params
        params.require(:memories).permit(:title, :date, :description, :image, :favorite, :pet_id)
    end
end
end
