class CreaturesController < ApplicationController
	def index
		@creatures = Creature.all
	end

	def new
		@creature = Creature.new
	end

	def create
      creature = Creature.create(creature_params)
      redirect_to creature_path(creature)
    end

    # public methods up here
    def show
      @creature = Creature.find(params[:id])
      puts("!!!!!!!!!!!!!!!!!!!!!!#{@creature}")
    end

    private

    def creature_params
      params.require(:creature).permit(:name, :description)
    end



end
