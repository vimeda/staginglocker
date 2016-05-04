class LocksController < ApplicationController
	def index
		@lock = Lock.all.last
		if @lock.nil?
			@lock = Lock.new
		end
	end

	def create
		@lock = Lock.new lock_params
		if @lock.save 
			redirect_to locks_path
		else			
			render :index
		end
	end

	def destroy
		Lock.delete(Lock.all)
		redirect_to locks_path
	end

	private
		def lock_params
			params.require(:lock).permit(:name, :note)
		end
end
