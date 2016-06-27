class Api::StickiesController < ApplicationController
	def index
		render json: Sticky.all
	end

	def create
		sticky = Sticky.new(note_params)
		if sticky.save
			render json: sticky
		else
			render json: { errors: sticky.errors, status: :unprocessabe_entity }
		end
	end

	def update
		sticky = Sticky.find(params[:id])
		sticky.update
		render json: item
	end

	def destroy
		Sticky.find_by(params[:id]).destroy
		render json: { message: 'Sticky Note Deleted' }
	end

	private

		def sticky_params
			params.require(:sticky).permit(:note)
		end
end